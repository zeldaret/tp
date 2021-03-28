lbl_8065C680:
/* 8065C680  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8065C684  7C 08 02 A6 */	mflr r0
/* 8065C688  90 01 00 24 */	stw r0, 0x24(r1)
/* 8065C68C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8065C690  7C 7F 1B 78 */	mr r31, r3
/* 8065C694  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8065C698  D0 01 00 08 */	stfs f0, 8(r1)
/* 8065C69C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8065C6A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8065C6A4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8065C6A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8065C6AC  38 60 00 02 */	li r3, 2
/* 8065C6B0  38 81 00 08 */	addi r4, r1, 8
/* 8065C6B4  4B C0 4A 4C */	b dTimer_createGetIn2D__Fl4cXyz
/* 8065C6B8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8065C6BC  38 A3 01 88 */	addi r5, r3, g_meter2_info@l
/* 8065C6C0  88 65 00 BC */	lbz r3, 0xbc(r5)
/* 8065C6C4  38 03 00 01 */	addi r0, r3, 1
/* 8065C6C8  98 05 00 BC */	stb r0, 0xbc(r5)
/* 8065C6CC  38 00 00 32 */	li r0, 0x32
/* 8065C6D0  90 1F 0C 90 */	stw r0, 0xc90(r31)
/* 8065C6D4  38 80 00 01 */	li r4, 1
/* 8065C6D8  98 9F 0C 9F */	stb r4, 0xc9f(r31)
/* 8065C6DC  38 00 00 00 */	li r0, 0
/* 8065C6E0  98 1F 0C A9 */	stb r0, 0xca9(r31)
/* 8065C6E4  88 65 00 BC */	lbz r3, 0xbc(r5)
/* 8065C6E8  88 05 00 BB */	lbz r0, 0xbb(r5)
/* 8065C6EC  7C 03 00 40 */	cmplw r3, r0
/* 8065C6F0  40 82 00 08 */	bne lbl_8065C6F8
/* 8065C6F4  98 9F 0C A9 */	stb r4, 0xca9(r31)
lbl_8065C6F8:
/* 8065C6F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8065C6FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8065C700  7C 08 03 A6 */	mtlr r0
/* 8065C704  38 21 00 20 */	addi r1, r1, 0x20
/* 8065C708  4E 80 00 20 */	blr 
