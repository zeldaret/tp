#ifndef NW4HBM_UT_TAG_PROCESSOR_BASE_H
#define NW4HBM_UT_TAG_PROCESSOR_BASE_H

#include <revolution/types.h>

// context declarations
namespace nw4hbm { namespace ut { struct Rect; }}
namespace nw4hbm { namespace ut { template <typename> class TextWriterBase; }}

namespace nw4hbm {
    namespace ut {
        enum Operation {
            OPERATION_DEFAULT,
            OPERATION_NO_CHAR_SPACE,
            OPERATION_CHAR_SPACE,
            OPERATION_NEXT_LINE,
            OPERATION_END_DRAW,

            NUM_OF_OPERATION
        };

        template <typename CharT>
        struct PrintContext {
            TextWriterBase<CharT>* writer;  // size 0x04, offset 0x00
            CharT const* str;               // size 0x04, offset 0x04
            f32 xOrigin;                    // size 0x04, offset 0x08
            f32 yOrigin;                    // size 0x04, offset 0x0c
            u32 flags;                      // size 0x04, offset 0x10
        };  // size 0x14

        template <typename CharT>
        class TagProcessorBase {
            // methods
        public:
            // explicit instantiation function ordering
            // Do not reorder anything
            TagProcessorBase();
            virtual ~TagProcessorBase();
            virtual Operation Process(u16 code, PrintContext<CharT>* context);
            virtual Operation CalcRect(Rect* pRect, u16 code, PrintContext<CharT>* context);
            void ProcessLinefeed(PrintContext<CharT>* context);
            void ProcessTab(PrintContext<CharT>* context);

            // members
        private:
            /* vtable */  // size 0x04, offset 0x00
        };  // size 0x04

        // extern template class TagProcessorBase<char>;
        // extern template class TagProcessorBase<wchar_t>;
    }  // namespace ut
}  // namespace nw4hbm

#endif  // NW4HBM_UT_TAG_PROCESSOR_BASE_H
