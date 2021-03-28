lbl_80C5BFA0:
/* 80C5BFA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5BFA4  7C 08 02 A6 */	mflr r0
/* 80C5BFA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5BFAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5BFB0  7C 7F 1B 78 */	mr r31, r3
/* 80C5BFB4  38 60 00 C0 */	li r3, 0xc0
/* 80C5BFB8  4B 67 2C 94 */	b __nw__FUl
/* 80C5BFBC  7C 60 1B 79 */	or. r0, r3, r3
/* 80C5BFC0  41 82 00 0C */	beq lbl_80C5BFCC
/* 80C5BFC4  4B 41 F9 AC */	b __ct__4dBgWFv
/* 80C5BFC8  7C 60 1B 78 */	mr r0, r3
lbl_80C5BFCC:
/* 80C5BFCC  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80C5BFD0  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80C5BFD4  28 00 00 00 */	cmplwi r0, 0
/* 80C5BFD8  41 82 00 58 */	beq lbl_80C5C030
/* 80C5BFDC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5BFE0  54 00 36 BA */	rlwinm r0, r0, 6, 0x1a, 0x1d
/* 80C5BFE4  3C 60 80 C6 */	lis r3, l_arcName@ha
/* 80C5BFE8  38 63 C3 F0 */	addi r3, r3, l_arcName@l
/* 80C5BFEC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C5BFF0  3C 80 80 C6 */	lis r4, l_dzbIdx2@ha
/* 80C5BFF4  38 84 C3 CC */	addi r4, r4, l_dzbIdx2@l
/* 80C5BFF8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C5BFFC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C5C000  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C5C004  3C A5 00 02 */	addis r5, r5, 2
/* 80C5C008  38 C0 00 80 */	li r6, 0x80
/* 80C5C00C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C5C010  4B 3E 02 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C5C014  7C 64 1B 78 */	mr r4, r3
/* 80C5C018  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C5C01C  38 A0 00 01 */	li r5, 1
/* 80C5C020  38 DF 05 6C */	addi r6, r31, 0x56c
/* 80C5C024  4B 41 DF 14 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C5C028  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C5C02C  41 82 00 14 */	beq lbl_80C5C040
lbl_80C5C030:
/* 80C5C030  38 00 00 00 */	li r0, 0
/* 80C5C034  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80C5C038  38 60 00 00 */	li r3, 0
/* 80C5C03C  48 00 00 08 */	b lbl_80C5C044
lbl_80C5C040:
/* 80C5C040  38 60 00 01 */	li r3, 1
lbl_80C5C044:
/* 80C5C044  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5C048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C04C  7C 08 03 A6 */	mtlr r0
/* 80C5C050  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C054  4E 80 00 20 */	blr 
