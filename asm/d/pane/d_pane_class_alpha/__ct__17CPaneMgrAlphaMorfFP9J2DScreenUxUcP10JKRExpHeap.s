lbl_80255C68:
/* 80255C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80255C6C  7C 08 02 A6 */	mflr r0
/* 80255C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80255C74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80255C78  7C 7F 1B 78 */	mr r31, r3
/* 80255C7C  4B FF F7 81 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 80255C80  3C 60 80 3C */	lis r3, __vt__17CPaneMgrAlphaMorf@ha /* 0x803C2E18@ha */
/* 80255C84  38 03 2E 18 */	addi r0, r3, __vt__17CPaneMgrAlphaMorf@l /* 0x803C2E18@l */
/* 80255C88  90 1F 00 00 */	stw r0, 0(r31)
/* 80255C8C  7F E3 FB 78 */	mr r3, r31
/* 80255C90  48 00 00 B9 */	bl initiateAlphaMorf__17CPaneMgrAlphaMorfFv
/* 80255C94  7F E3 FB 78 */	mr r3, r31
/* 80255C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80255C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80255CA0  7C 08 03 A6 */	mtlr r0
/* 80255CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80255CA8  4E 80 00 20 */	blr 
