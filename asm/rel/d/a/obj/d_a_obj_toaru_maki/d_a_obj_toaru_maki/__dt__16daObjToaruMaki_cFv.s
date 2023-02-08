lbl_80D130E0:
/* 80D130E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D130E4  7C 08 02 A6 */	mflr r0
/* 80D130E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D130EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D130F0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D130F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D130F8  7C 9F 23 78 */	mr r31, r4
/* 80D130FC  41 82 00 54 */	beq lbl_80D13150
/* 80D13100  3C 60 80 D1 */	lis r3, __vt__16daObjToaruMaki_c@ha /* 0x80D1367C@ha */
/* 80D13104  38 03 36 7C */	addi r0, r3, __vt__16daObjToaruMaki_c@l /* 0x80D1367C@l */
/* 80D13108  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80D1310C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D13110  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80D13114  7F C3 F3 78 */	mr r3, r30
/* 80D13118  41 82 00 08 */	beq lbl_80D13120
/* 80D1311C  38 63 05 68 */	addi r3, r3, 0x568
lbl_80D13120:
/* 80D13120  54 00 10 3A */	slwi r0, r0, 2
/* 80D13124  3C 80 80 D1 */	lis r4, l_arcName@ha /* 0x80D13624@ha */
/* 80D13128  38 84 36 24 */	addi r4, r4, l_arcName@l /* 0x80D13624@l */
/* 80D1312C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D13130  4B 31 9E D9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D13134  7F C3 F3 78 */	mr r3, r30
/* 80D13138  38 80 00 00 */	li r4, 0
/* 80D1313C  4B 30 5B 51 */	bl __dt__10fopAc_ac_cFv
/* 80D13140  7F E0 07 35 */	extsh. r0, r31
/* 80D13144  40 81 00 0C */	ble lbl_80D13150
/* 80D13148  7F C3 F3 78 */	mr r3, r30
/* 80D1314C  4B 5B BB F1 */	bl __dl__FPv
lbl_80D13150:
/* 80D13150  7F C3 F3 78 */	mr r3, r30
/* 80D13154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D13158  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D1315C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D13160  7C 08 03 A6 */	mtlr r0
/* 80D13164  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13168  4E 80 00 20 */	blr 
