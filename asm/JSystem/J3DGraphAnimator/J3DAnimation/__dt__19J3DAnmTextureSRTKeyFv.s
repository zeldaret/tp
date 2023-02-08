lbl_8032C198:
/* 8032C198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C19C  7C 08 02 A6 */	mflr r0
/* 8032C1A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C1A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032C1A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032C1AC  41 82 00 5C */	beq lbl_8032C208
/* 8032C1B0  3C 60 80 3D */	lis r3, __vt__19J3DAnmTextureSRTKey@ha /* 0x803CEE24@ha */
/* 8032C1B4  38 03 EE 24 */	addi r0, r3, __vt__19J3DAnmTextureSRTKey@l /* 0x803CEE24@l */
/* 8032C1B8  90 1F 00 00 */	stw r0, 0(r31)
/* 8032C1BC  34 1F 00 64 */	addic. r0, r31, 0x64
/* 8032C1C0  41 82 00 10 */	beq lbl_8032C1D0
/* 8032C1C4  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha /* 0x803BB3DC@ha */
/* 8032C1C8  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l /* 0x803BB3DC@l */
/* 8032C1CC  90 1F 00 64 */	stw r0, 0x64(r31)
lbl_8032C1D0:
/* 8032C1D0  34 1F 00 30 */	addic. r0, r31, 0x30
/* 8032C1D4  41 82 00 10 */	beq lbl_8032C1E4
/* 8032C1D8  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha /* 0x803BB3DC@ha */
/* 8032C1DC  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l /* 0x803BB3DC@l */
/* 8032C1E0  90 1F 00 30 */	stw r0, 0x30(r31)
lbl_8032C1E4:
/* 8032C1E4  28 1F 00 00 */	cmplwi r31, 0
/* 8032C1E8  41 82 00 10 */	beq lbl_8032C1F8
/* 8032C1EC  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha /* 0x803A7C38@ha */
/* 8032C1F0  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l /* 0x803A7C38@l */
/* 8032C1F4  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032C1F8:
/* 8032C1F8  7C 80 07 35 */	extsh. r0, r4
/* 8032C1FC  40 81 00 0C */	ble lbl_8032C208
/* 8032C200  7F E3 FB 78 */	mr r3, r31
/* 8032C204  4B FA 2B 39 */	bl __dl__FPv
lbl_8032C208:
/* 8032C208  7F E3 FB 78 */	mr r3, r31
/* 8032C20C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C214  7C 08 03 A6 */	mtlr r0
/* 8032C218  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C21C  4E 80 00 20 */	blr 
