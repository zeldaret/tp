lbl_804920A8:
/* 804920A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804920AC  7C 08 02 A6 */	mflr r0
/* 804920B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804920B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804920B8  7C 7F 1B 78 */	mr r31, r3
/* 804920BC  A0 63 07 56 */	lhz r3, 0x756(r3)
/* 804920C0  28 03 03 E8 */	cmplwi r3, 0x3e8
/* 804920C4  40 80 00 0C */	bge lbl_804920D0
/* 804920C8  38 03 00 01 */	addi r0, r3, 1
/* 804920CC  B0 1F 07 56 */	sth r0, 0x756(r31)
lbl_804920D0:
/* 804920D0  A0 1F 07 56 */	lhz r0, 0x756(r31)
/* 804920D4  28 00 00 98 */	cmplwi r0, 0x98
/* 804920D8  40 82 00 10 */	bne lbl_804920E8
/* 804920DC  38 7F 09 D0 */	addi r3, r31, 0x9d0
/* 804920E0  4B D1 59 21 */	bl dKy_efplight_cut__FP15LIGHT_INFLUENCE
/* 804920E4  48 00 00 28 */	b lbl_8049210C
lbl_804920E8:
/* 804920E8  28 00 00 70 */	cmplwi r0, 0x70
/* 804920EC  40 81 00 10 */	ble lbl_804920FC
/* 804920F0  7F E3 FB 78 */	mr r3, r31
/* 804920F4  48 00 02 E1 */	bl lightDownProc__8daTbox_cFv
/* 804920F8  48 00 00 14 */	b lbl_8049210C
lbl_804920FC:
/* 804920FC  28 00 00 02 */	cmplwi r0, 2
/* 80492100  40 81 00 0C */	ble lbl_8049210C
/* 80492104  7F E3 FB 78 */	mr r3, r31
/* 80492108  48 00 02 91 */	bl lightUpProc__8daTbox_cFv
lbl_8049210C:
/* 8049210C  A0 1F 07 56 */	lhz r0, 0x756(r31)
/* 80492110  28 00 00 16 */	cmplwi r0, 0x16
/* 80492114  40 81 00 34 */	ble lbl_80492148
/* 80492118  1C 00 1D 4C */	mulli r0, r0, 0x1d4c
/* 8049211C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80492120  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80492124  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80492128  7C 43 04 2E */	lfsx f2, r3, r0
/* 8049212C  3C 60 80 49 */	lis r3, lit_3834@ha /* 0x8049622C@ha */
/* 80492130  C0 23 62 2C */	lfs f1, lit_3834@l(r3)  /* 0x8049622C@l */
/* 80492134  3C 60 80 49 */	lis r3, lit_4441@ha /* 0x8049626C@ha */
/* 80492138  C0 03 62 6C */	lfs f0, lit_4441@l(r3)  /* 0x8049626C@l */
/* 8049213C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80492140  EC 01 00 2A */	fadds f0, f1, f0
/* 80492144  D0 1F 09 E4 */	stfs f0, 0x9e4(r31)
lbl_80492148:
/* 80492148  7F E3 FB 78 */	mr r3, r31
/* 8049214C  48 00 00 21 */	bl lightColorProc__8daTbox_cFv
/* 80492150  7F E3 FB 78 */	mr r3, r31
/* 80492154  48 00 01 E9 */	bl environmentProc__8daTbox_cFv
/* 80492158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049215C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80492160  7C 08 03 A6 */	mtlr r0
/* 80492164  38 21 00 10 */	addi r1, r1, 0x10
/* 80492168  4E 80 00 20 */	blr 
