lbl_80C90380:
/* 80C90380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C90384  7C 08 02 A6 */	mflr r0
/* 80C90388  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9038C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C90390  7C 7F 1B 78 */	mr r31, r3
/* 80C90394  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C90398  3C 80 80 C9 */	lis r4, stringBase0@ha
/* 80C9039C  38 84 09 60 */	addi r4, r4, stringBase0@l
/* 80C903A0  4B 39 CC 68 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C903A4  88 1F 07 2C */	lbz r0, 0x72c(r31)
/* 80C903A8  28 00 00 00 */	cmplwi r0, 0
/* 80C903AC  41 82 00 10 */	beq lbl_80C903BC
/* 80C903B0  38 00 00 00 */	li r0, 0
/* 80C903B4  3C 60 80 C9 */	lis r3, data_80C90A50@ha
/* 80C903B8  98 03 0A 50 */	stb r0, data_80C90A50@l(r3)
lbl_80C903BC:
/* 80C903BC  C0 3F 07 20 */	lfs f1, 0x720(r31)
/* 80C903C0  3C 60 80 C9 */	lis r3, lit_3933@ha
/* 80C903C4  C0 03 09 48 */	lfs f0, lit_3933@l(r3)
/* 80C903C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C903CC  40 81 00 0C */	ble lbl_80C903D8
/* 80C903D0  38 7F 07 0C */	addi r3, r31, 0x70c
/* 80C903D4  4B 51 75 58 */	b dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80C903D8:
/* 80C903D8  38 60 00 01 */	li r3, 1
/* 80C903DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C903E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C903E4  7C 08 03 A6 */	mtlr r0
/* 80C903E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C903EC  4E 80 00 20 */	blr 
