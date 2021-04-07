lbl_80B01878:
/* 80B01878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0187C  7C 08 02 A6 */	mflr r0
/* 80B01880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B01884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B01888  93 C1 00 08 */	stw r30, 8(r1)
/* 80B0188C  7C 7E 1B 78 */	mr r30, r3
/* 80B01890  7C 9F 23 78 */	mr r31, r4
/* 80B01894  80 03 06 8C */	lwz r0, 0x68c(r3)
/* 80B01898  7C 00 F8 00 */	cmpw r0, r31
/* 80B0189C  41 82 00 40 */	beq lbl_80B018DC
/* 80B018A0  38 7E 07 B0 */	addi r3, r30, 0x7b0
/* 80B018A4  3C 80 80 B1 */	lis r4, lit_4024@ha /* 0x80B0C1F4@ha */
/* 80B018A8  C0 24 C1 F4 */	lfs f1, lit_4024@l(r4)  /* 0x80B0C1F4@l */
/* 80B018AC  4B 57 58 69 */	bl SetGroundUpY__9dBgS_AcchFf
/* 80B018B0  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 80B018B4  90 1E 06 90 */	stw r0, 0x690(r30)
/* 80B018B8  93 FE 06 8C */	stw r31, 0x68c(r30)
/* 80B018BC  38 00 00 00 */	li r0, 0
/* 80B018C0  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B018C4  98 1E 06 C5 */	stb r0, 0x6c5(r30)
/* 80B018C8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80B018CC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B018D0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B018D4  60 00 40 00 */	ori r0, r0, 0x4000
/* 80B018D8  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80B018DC:
/* 80B018DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B018E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B018E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B018E8  7C 08 03 A6 */	mtlr r0
/* 80B018EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B018F0  4E 80 00 20 */	blr 
