/* =========================================================
   THEME 2026 — Effets & animations (dépend de jQuery, déjà chargé)
   ========================================================= */
(function ($) {
    "use strict";

    $(function () {

        /* ---------- Révélation au scroll ---------- */
        // Marque automatiquement les blocs principaux comme animables,
        // puis applique un délai en cascade à l'intérieur des grilles.
        var revealSelectors = [
            '.headline', '.product .item', '.item-search-result',
            '.service .item', '.testimonial-carousel .item',
            '.user-content', '.cart', '.billing-address',
            '.review-form', '.widget', '.single-post'
        ].join(', ');

        $(revealSelectors).each(function () {
            if (!$(this).hasClass('reveal')) {
                $(this).addClass('reveal');
            }
        });

        $('.row, .product-carousel').each(function () {
            $(this).children('.product .item, .item-search-result, .service .item').each(function (index) {
                $(this).css('--reveal-delay', Math.min(index * 70, 420) + 'ms');
            });
        });

        if ('IntersectionObserver' in window) {
            var io = new IntersectionObserver(function (entries) {
                entries.forEach(function (entry) {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('is-visible');
                        io.unobserve(entry.target);
                    }
                });
            }, { threshold: 0.12, rootMargin: '0px 0px -40px 0px' });

            $('.reveal').each(function () { io.observe(this); });
        } else {
            $('.reveal').addClass('is-visible');
        }

        /* ---------- Header compact au scroll ---------- */
        var $body = $('body');
        var $window = $(window);
        var onScrollHeader = function () {
            if ($window.scrollTop() > 10) { $body.addClass('is-scrolled'); }
            else { $body.removeClass('is-scrolled'); }
        };
        onScrollHeader();
        $window.on('scroll', onScrollHeader);

        /* ---------- Boutons : effet magnétique + ripple ---------- */
        $(document).on('mouseenter', '.btn', function () {
            $(this).stop(true, false).animate({ opacity: 1 }, 120);
        });

        $(document).on('click', '.btn', function (e) {
            var $btn = $(this);
            if ($btn.find('.theme-ripple').length) { return; }
            var $ripple = $('<span class="theme-ripple"></span>');
            $btn.css({ position: 'relative', overflow: 'hidden' });
            $btn.append($ripple);
            $ripple.css({
                position: 'absolute',
                borderRadius: '50%',
                background: 'rgba(255,255,255,.45)',
                width: 20, height: 20,
                left: e.pageX - $btn.offset().left - 10,
                top: e.pageY - $btn.offset().top - 10,
                pointerEvents: 'none'
            }).animate({
                width: '+=140', height: '+=140',
                left: '-=70', top: '-=70',
                opacity: 0
            }, 550, function () { $ripple.remove(); });
        });

        /* ---------- Ajout au panier : micro-confirmation ---------- */
        $(document).on('click', 'a:contains("Add to Cart"), .btn-cart input[type=submit]', function () {
            var $el = $(this);
            $el.stop(true, true).animate({ opacity: .75 }, 90).animate({ opacity: 1 }, 160);
        });

        /* ---------- Compteurs animés (dashboard admin) ---------- */
        $('.counter').each(function () {
            var $el = $(this);
            var target = parseInt($el.text().replace(/[^\d]/g, ''), 10);
            if (isNaN(target)) { return; }
            if ('IntersectionObserver' in window) {
                var seen = false;
                var counterIo = new IntersectionObserver(function (entries) {
                    if (seen) { return; }
                    if (entries[0].isIntersecting) {
                        seen = true;
                        $({ n: 0 }).animate({ n: target }, {
                            duration: 1400,
                            easing: 'swing',
                            step: function (now) { $el.text(Math.floor(now)); },
                            complete: function () { $el.text(target); }
                        });
                        counterIo.disconnect();
                    }
                }, { threshold: 0.4 });
                counterIo.observe($el[0]);
            }
        });

        /* ---------- Transition douce entre les pages ---------- */
        // Les liens avec onclick (confirmations de suppression) gardent leur comportement natif.
        $(document).on('click', 'a[href]:not([href^="#"]):not([target="_blank"]):not([href^="javascript"]):not([href^="mailto"]):not([href^="tel"]):not([onclick])', function (e) {
            var href = $(this).attr('href');
            if (!href || href.charAt(0) === '#') { return; }
            if (e.metaKey || e.ctrlKey || e.shiftKey) { return; }
            e.preventDefault();
            $('body').addClass('theme-transitioning');
            window.setTimeout(function () { window.location.href = href; }, 260);
        });

        /* ---------- Sélecteur de palette (démo) ---------- */
        var PALETTES = [
            { id: 'default', label: 'Violet (défaut)',  dot: '#6C5CE7' },
            { id: 'warm',    label: 'Chaleureuse',      dot: '#D96C47' },
            { id: 'cool',    label: 'Froide',           dot: '#0E9F8A' },
            { id: 'luxe',    label: 'Luxe',             dot: '#A98A5B' }
        ];

        var saved = null;
        try { saved = localStorage.getItem('theme-palette'); } catch (err) { saved = null; }

        var $swatch = $('<div class="theme-palette-picker" title="Choisir la palette"></div>');
        $.each(PALETTES, function (i, p) {
            var $b = $('<button type="button" aria-label="' + p.label + '"></button>')
                .css('background', p.dot)
                .attr('data-palette', p.id)
                .attr('title', p.label);
            if ((saved || 'default') === p.id) { $b.addClass('active'); }
            $b.on('click', function () {
                if (p.id === 'default') {
                    document.body.removeAttribute('data-palette');
                } else {
                    document.body.setAttribute('data-palette', p.id);
                }
                try { localStorage.setItem('theme-palette', p.id); } catch (err) {}
                $swatch.find('button').removeClass('active');
                $(this).addClass('active');
            });
            $swatch.append($b);
        });
        $('body').append($swatch);

        /* ---------- Tilt 3D léger sur les cartes produit ---------- */
        if (window.matchMedia && window.matchMedia('(hover:hover) and (min-width: 992px)').matches) {
            $(document).on('mousemove', '.product .item', function (e) {
                var $card = $(this);
                var offset = $card.offset();
                var relX = (e.pageX - offset.left) / $card.outerWidth() - 0.5;
                var relY = (e.pageY - offset.top) / $card.outerHeight() - 0.5;
                $card.css({
                    transform: 'perspective(900px) rotateX(' + (-relY * 5) + 'deg) rotateY(' + (relX * 5) + 'deg) translateY(-6px)',
                    transition: 'transform .08s linear'
                });
            });
            $(document).on('mouseleave', '.product .item', function () {
                $(this).css({ transform: '', transition: 'transform .45s cubic-bezier(.22,.61,.36,1)' });
            });
        }

    });

})(jQuery);
