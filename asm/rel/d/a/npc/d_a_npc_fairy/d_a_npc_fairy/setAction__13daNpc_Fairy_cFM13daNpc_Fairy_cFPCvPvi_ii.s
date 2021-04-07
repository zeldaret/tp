lbl_809B3FE0:
/* 809B3FE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B3FE4  7C 08 02 A6 */	mflr r0
/* 809B3FE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B3FEC  39 61 00 20 */	addi r11, r1, 0x20
/* 809B3FF0  4B 9A E1 ED */	bl _savegpr_29
/* 809B3FF4  7C 7D 1B 78 */	mr r29, r3
/* 809B3FF8  7C 9E 23 78 */	mr r30, r4
/* 809B3FFC  7C BF 2B 78 */	mr r31, r5
/* 809B4000  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 809B4004  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 809B4008  B0 1D 0E 22 */	sth r0, 0xe22(r29)
/* 809B400C  38 7D 0F 84 */	addi r3, r29, 0xf84
/* 809B4010  4B 9A E0 09 */	bl __ptmf_test
/* 809B4014  2C 03 00 00 */	cmpwi r3, 0
/* 809B4018  41 82 00 18 */	beq lbl_809B4030
/* 809B401C  7F A3 EB 78 */	mr r3, r29
/* 809B4020  38 80 00 00 */	li r4, 0
/* 809B4024  39 9D 0F 84 */	addi r12, r29, 0xf84
/* 809B4028  4B 9A E0 5D */	bl __ptmf_scall
/* 809B402C  60 00 00 00 */	nop 
lbl_809B4030:
/* 809B4030  38 00 00 00 */	li r0, 0
/* 809B4034  B0 1D 0E 22 */	sth r0, 0xe22(r29)
/* 809B4038  80 7E 00 00 */	lwz r3, 0(r30)
/* 809B403C  80 1E 00 04 */	lwz r0, 4(r30)
/* 809B4040  90 7D 0F 84 */	stw r3, 0xf84(r29)
/* 809B4044  90 1D 0F 88 */	stw r0, 0xf88(r29)
/* 809B4048  80 1E 00 08 */	lwz r0, 8(r30)
/* 809B404C  90 1D 0F 8C */	stw r0, 0xf8c(r29)
/* 809B4050  38 7D 0F 84 */	addi r3, r29, 0xf84
/* 809B4054  4B 9A DF C5 */	bl __ptmf_test
/* 809B4058  2C 03 00 00 */	cmpwi r3, 0
/* 809B405C  41 82 00 18 */	beq lbl_809B4074
/* 809B4060  7F A3 EB 78 */	mr r3, r29
/* 809B4064  7F E4 FB 78 */	mr r4, r31
/* 809B4068  39 9D 0F 84 */	addi r12, r29, 0xf84
/* 809B406C  4B 9A E0 19 */	bl __ptmf_scall
/* 809B4070  60 00 00 00 */	nop 
lbl_809B4074:
/* 809B4074  38 60 00 01 */	li r3, 1
/* 809B4078  39 61 00 20 */	addi r11, r1, 0x20
/* 809B407C  4B 9A E1 AD */	bl _restgpr_29
/* 809B4080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B4084  7C 08 03 A6 */	mtlr r0
/* 809B4088  38 21 00 20 */	addi r1, r1, 0x20
/* 809B408C  4E 80 00 20 */	blr 
