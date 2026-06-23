#include "d/d_rvl_fb_copy.h"

// This TU's existence is inferred from the following facts:
//   - In most versions the below flag symbol is located in .sbss between symbols in d_cursor_mng
//     and m_Do_main on most versions
//   - The symbol is not used in either of those TUs
//   - In DZDE01 an extra TU (d_E3Stage_select06) exists between those two TUs, and the flag symbol
//     is located before its .sbss symbols meaning it cannot be in m_Do_main
//   - In Wii versions there is a 7-byte gap between the last known symbol in d_cursor_mng and the
//     flag symbol, which can only be caused by:
//     a) An extra unused 4-byte-aligned symbol in d_cursor_mng (unlikely, the symbol map only
//        tends to exclude 1-byte symbols)
//     b) 4 extra unused 1-byte symbols in d_cursor_mng prior to the flag symbol (generally seems
//        implausible to have that many extra unused vars)
//     c) The symbol is contained by the demo-specific TU (seems implausible, doesn't really belong
//        there and everything else would need to be guarded for other versions rather than just
//        excluding the TU)
//     d) An extra TU which forces the flag symbol to be aligned to 8 bytes (most likely reason)

bool g_rvlEnableExtraFramebufferCopy;
