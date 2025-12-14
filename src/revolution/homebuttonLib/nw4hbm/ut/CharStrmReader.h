#ifndef NW4HBM_UT_CHAR_STRM_READER_H
#define NW4HBM_UT_CHAR_STRM_READER_H

#include <revolution/types.h>

namespace nw4hbm {
    namespace ut {
        class CharStrmReader {
            // typedefs
        public:
            typedef u16 (CharStrmReader::*ReadFunc)();

            // methods
        public:
            // cdtors
            CharStrmReader(ReadFunc func) : mCharStrm(NULL), mReadFunc(func) {}

            ~CharStrmReader() {}

            // methods
            void const* GetCurrentPos() const { return mCharStrm; }

            void Set(char const* stream) { mCharStrm = stream; }
            void Set(wchar_t const* stream) { mCharStrm = stream; }

            u16 ReadNextCharUTF8();
            u16 ReadNextCharUTF16();
            u16 ReadNextCharCP1252();
            u16 ReadNextCharSJIS();

            u16 Next() { return (this->*mReadFunc)(); }

            template <typename CharT>
            CharT GetChar(int offset) const {
                CharT const* charStrm = static_cast<CharT const*>(mCharStrm);

                return charStrm[offset];
            }

            template <typename CharT>
            void StepStrm(int step) {
                CharT const*& charStrm = reinterpret_cast<CharT const*&>(mCharStrm);

                charStrm += step;
            }

            // members
        private:
            void const* mCharStrm;  // size 0x04, offset 0x00
            ReadFunc mReadFunc;     // size 0x0c, offset 0x04
        };  // size 0x10
    }  // namespace ut
}  // namespace nw4hbm

#endif  // NW4HBM_UT_CHAR_STRM_READER_H
