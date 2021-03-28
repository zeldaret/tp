lbl_80CB134C:
/* 80CB134C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1350  7C 08 02 A6 */	mflr r0
/* 80CB1354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB1358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB135C  7C 7F 1B 78 */	mr r31, r3
/* 80CB1360  48 00 02 59 */	bl getResName__13daObj_Pleaf_cFv
/* 80CB1364  38 80 00 03 */	li r4, 3
/* 80CB1368  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CB136C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CB1370  3C A5 00 02 */	addis r5, r5, 2
/* 80CB1374  38 C0 00 80 */	li r6, 0x80
/* 80CB1378  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CB137C  4B 38 AF 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB1380  28 03 00 00 */	cmplwi r3, 0
/* 80CB1384  40 82 00 0C */	bne lbl_80CB1390
/* 80CB1388  38 60 00 00 */	li r3, 0
/* 80CB138C  48 00 00 24 */	b lbl_80CB13B0
lbl_80CB1390:
/* 80CB1390  3C 80 00 08 */	lis r4, 8
/* 80CB1394  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CB1398  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CB139C  4B 36 38 B8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CB13A0  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80CB13A4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CB13A8  30 03 FF FF */	addic r0, r3, -1
/* 80CB13AC  7C 60 19 10 */	subfe r3, r0, r3
lbl_80CB13B0:
/* 80CB13B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB13B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB13B8  7C 08 03 A6 */	mtlr r0
/* 80CB13BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB13C0  4E 80 00 20 */	blr 
