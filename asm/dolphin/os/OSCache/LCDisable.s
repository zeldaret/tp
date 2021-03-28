lbl_8033B7EC:
/* 8033B7EC  3C 60 E0 00 */	lis r3, 0xE000 /* 0xE0000020@ha */
/* 8033B7F0  38 80 02 00 */	li r4, 0x200
/* 8033B7F4  7C 89 03 A6 */	mtctr r4
lbl_8033B7F8:
/* 8033B7F8  7C 00 1B AC */	dcbi 0, r3
/* 8033B7FC  38 63 00 20 */	addi r3, r3, 0x0020 /* 0xE0000020@l */
/* 8033B800  42 00 FF F8 */	bdnz lbl_8033B7F8
/* 8033B804  7C 98 E2 A6 */	mfspr r4, 0x398
/* 8033B808  54 84 01 04 */	rlwinm r4, r4, 0, 4, 2
/* 8033B80C  7C 98 E3 A6 */	mtspr 0x398, r4
/* 8033B810  4E 80 00 20 */	blr 
