lbl_80CB52B4:
/* 80CB52B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB52B8  7C 08 02 A6 */	mflr r0
/* 80CB52BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB52C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB52C4  7C 7F 1B 78 */	mr r31, r3
/* 80CB52C8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CB52CC  3C 60 80 CB */	lis r3, l_arcName@ha
/* 80CB52D0  38 63 56 28 */	addi r3, r3, l_arcName@l
/* 80CB52D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB52D8  54 00 16 BA */	rlwinm r0, r0, 2, 0x1a, 0x1d
/* 80CB52DC  3C 80 80 CB */	lis r4, BMD_IDX@ha
/* 80CB52E0  38 84 56 14 */	addi r4, r4, BMD_IDX@l
/* 80CB52E4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CB52E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CB52EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CB52F0  3C A5 00 02 */	addis r5, r5, 2
/* 80CB52F4  38 C0 00 80 */	li r6, 0x80
/* 80CB52F8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CB52FC  4B 38 6F F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB5300  3C 80 00 08 */	lis r4, 8
/* 80CB5304  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CB5308  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CB530C  4B 35 F9 48 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CB5310  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80CB5314  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CB5318  30 03 FF FF */	addic r0, r3, -1
/* 80CB531C  7C 60 19 10 */	subfe r3, r0, r3
/* 80CB5320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB5324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB5328  7C 08 03 A6 */	mtlr r0
/* 80CB532C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB5330  4E 80 00 20 */	blr 
