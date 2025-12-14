#ifndef NW4R_DB_MAPFILE_H
#define NW4R_DB_MAPFILE_H

#include <revolution/os.h>

namespace nw4hbm {
    namespace db {
        struct MapFile {};

        BOOL MapFile_Exists();
        void GetCharOnMem_(const u8*);
        void GetCharOnDvd_(const u8*);
        void SearchParam_(u8*, u32, u8);
        void XStrToU32_(const u8*);
        void CopySymbol_(const u8*, u8*, u32, u8);
        void QuerySymbolToMapFile_(u8*, const OSModuleInfo*, u32, u8*, u32);
        void QuerySymbolToSingleMapFile_(MapFile*, u32, u8*, u32);
        BOOL MapFile_QuerySymbol(u32, u8*, u32);
    }  // namespace db
}  // namespace nw4r

#endif
