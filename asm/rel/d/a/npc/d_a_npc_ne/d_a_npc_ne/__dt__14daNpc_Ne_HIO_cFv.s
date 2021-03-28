lbl_80A92374:
/* 80A92374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A92378  7C 08 02 A6 */	mflr r0
/* 80A9237C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A92380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A92384  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A92388  41 82 00 1C */	beq lbl_80A923A4
/* 80A9238C  3C A0 80 A9 */	lis r5, __vt__14daNpc_Ne_HIO_c@ha
/* 80A92390  38 05 2A 74 */	addi r0, r5, __vt__14daNpc_Ne_HIO_c@l
/* 80A92394  90 1F 00 00 */	stw r0, 0(r31)
/* 80A92398  7C 80 07 35 */	extsh. r0, r4
/* 80A9239C  40 81 00 08 */	ble lbl_80A923A4
/* 80A923A0  4B 83 C9 9C */	b __dl__FPv
lbl_80A923A4:
/* 80A923A4  7F E3 FB 78 */	mr r3, r31
/* 80A923A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A923AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A923B0  7C 08 03 A6 */	mtlr r0
/* 80A923B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A923B8  4E 80 00 20 */	blr 
