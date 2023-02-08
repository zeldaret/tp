lbl_800284BC:
/* 800284BC  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 800284C0  3C 60 80 38 */	lis r3, l_iconSize@ha /* 0x80378E48@ha */
/* 800284C4  38 63 8E 48 */	addi r3, r3, l_iconSize@l /* 0x80378E48@l */
/* 800284C8  7C 23 04 2E */	lfsx f1, r3, r0
/* 800284CC  4E 80 00 20 */	blr 
