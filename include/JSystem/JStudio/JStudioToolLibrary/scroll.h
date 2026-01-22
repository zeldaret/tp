#ifndef JSTUDIOTOOLLIBRARY_SCROLL_H
#define JSTUDIOTOOLLIBRARY_SCROLL_H

#include "JSystem/JStudio/JStudioToolLibrary/visual.h"

namespace JStudioToolLibrary {
    struct TScroll {
        TScroll();
        virtual ~TScroll();

        int getStride() const;
        int getValue() const;
        int getMin() const;
        int getMax() const;
        void setStride(int);
        void setValue_scroll(int);
        void setValue(int);
        void setRange(int, int);
        void setValue_range_(int, int, int);

        /* 0x04 */ int value_;
        /* 0x08 */ int min_;
        /* 0x0C */ int max_;
        /* 0x10 */ int field_0x10;
        /* 0x14 */ int stride_;
    };

    struct TScroll_drawBar : public TScroll {
        void setRectangle(int, int, int, int);
        TRectangle& getRectangle() const;
        JUtility::TColor& getColor_disabled() const;
        JUtility::TColor& getColor_background() const;
        JUtility::TColor& getColor_foreground() const;
        JUtility::TColor& getColor_frame() const;

        /* 0x18 */ TRectangle rectangle_;
        /* 0x28 */ JUtility::TColor colorFrame_;
        /* 0x2C */ JUtility::TColor colorBackground_;
        /* 0x30 */ JUtility::TColor colorForeground_;
        /* 0x34 */ JUtility::TColor colorDisabled_;
    };

    struct TScroll_drawBar_horizontal : public TScroll_drawBar {
        virtual ~TScroll_drawBar_horizontal();
        virtual void draw(TDrawPrimitive2D*) const;
    };
}

#endif
