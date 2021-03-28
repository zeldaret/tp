lbl_800560F0:
/* 800560F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800560F4  7C 08 02 A6 */	mflr r0
/* 800560F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800560FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80056100  7C 7F 1B 78 */	mr r31, r3
/* 80056104  38 7F 02 68 */	addi r3, r31, 0x268
/* 80056108  3C 80 80 05 */	lis r4, __ct__20dDlst_shadowSimple_cFv@ha
/* 8005610C  38 84 63 8C */	addi r4, r4, __ct__20dDlst_shadowSimple_cFv@l
/* 80056110  38 A0 00 00 */	li r5, 0
/* 80056114  38 C0 00 68 */	li r6, 0x68
/* 80056118  38 E0 00 80 */	li r7, 0x80
/* 8005611C  48 30 BC 45 */	bl __construct_array
/* 80056120  38 7F 36 6C */	addi r3, r31, 0x366c
/* 80056124  3C 80 80 05 */	lis r4, __ct__18dDlst_shadowReal_cFv@ha
/* 80056128  38 84 62 D0 */	addi r4, r4, __ct__18dDlst_shadowReal_cFv@l
/* 8005612C  3C A0 80 05 */	lis r5, __dt__18dDlst_shadowReal_cFv@ha
/* 80056130  38 A5 61 F8 */	addi r5, r5, __dt__18dDlst_shadowReal_cFv@l
/* 80056134  38 C0 25 54 */	li r6, 0x2554
/* 80056138  38 E0 00 08 */	li r7, 8
/* 8005613C  48 30 BC 25 */	bl __construct_array
/* 80056140  38 00 00 00 */	li r0, 0
/* 80056144  98 1F 02 5C */	stb r0, 0x25c(r31)
/* 80056148  3C 7F 00 01 */	addis r3, r31, 1
/* 8005614C  3C 80 80 05 */	lis r4, __ct__26mDoExt_3DlineMatSortPacketFv@ha
/* 80056150  38 84 61 C8 */	addi r4, r4, __ct__26mDoExt_3DlineMatSortPacketFv@l
/* 80056154  3C A0 80 01 */	lis r5, __dt__26mDoExt_3DlineMatSortPacketFv@ha
/* 80056158  38 A5 4E 20 */	addi r5, r5, __dt__26mDoExt_3DlineMatSortPacketFv@l
/* 8005615C  38 C0 00 14 */	li r6, 0x14
/* 80056160  38 E0 00 03 */	li r7, 3
/* 80056164  38 63 61 54 */	addi r3, r3, 0x6154
/* 80056168  48 30 BB F9 */	bl __construct_array
/* 8005616C  38 80 00 00 */	li r4, 0
/* 80056170  3C 7F 00 01 */	addis r3, r31, 1
/* 80056174  98 83 61 90 */	stb r4, 0x6190(r3)
/* 80056178  38 1F 00 64 */	addi r0, r31, 0x64
/* 8005617C  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80056180  38 1F 00 AC */	addi r0, r31, 0xac
/* 80056184  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 80056188  38 1F 01 B4 */	addi r0, r31, 0x1b4
/* 8005618C  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 80056190  38 1F 02 3C */	addi r0, r31, 0x23c
/* 80056194  90 1F 02 40 */	stw r0, 0x240(r31)
/* 80056198  7F E3 FB 78 */	mr r3, r31
/* 8005619C  38 00 00 15 */	li r0, 0x15
/* 800561A0  7C 09 03 A6 */	mtctr r0
lbl_800561A4:
/* 800561A4  90 83 00 00 */	stw r4, 0(r3)
/* 800561A8  38 63 00 04 */	addi r3, r3, 4
/* 800561AC  42 00 FF F8 */	bdnz lbl_800561A4
/* 800561B0  7F E3 FB 78 */	mr r3, r31
/* 800561B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800561B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800561BC  7C 08 03 A6 */	mtlr r0
/* 800561C0  38 21 00 10 */	addi r1, r1, 0x10
/* 800561C4  4E 80 00 20 */	blr 
