lbl_800B7F84:
/* 800B7F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7F88  7C 08 02 A6 */	mflr r0
/* 800B7F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B7F90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B7F94  93 C1 00 08 */	stw r30, 8(r1)
/* 800B7F98  7C 7E 1B 78 */	mr r30, r3
/* 800B7F9C  A8 03 00 08 */	lha r0, 8(r3)
/* 800B7FA0  2C 00 02 5D */	cmpwi r0, 0x25d
/* 800B7FA4  40 82 01 04 */	bne lbl_800B80A8
/* 800B7FA8  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 800B7FAC  28 00 00 0B */	cmplwi r0, 0xb
/* 800B7FB0  40 82 00 E4 */	bne lbl_800B8094
/* 800B7FB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800B7FB8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800B7FBC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 800B7FC0  4B F6 27 51 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800B7FC4  38 80 00 03 */	li r4, 3
/* 800B7FC8  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 800B7FCC  7C 00 18 50 */	subf r0, r0, r3
/* 800B7FD0  7C 00 07 35 */	extsh. r0, r0
/* 800B7FD4  40 80 00 08 */	bge lbl_800B7FDC
/* 800B7FD8  38 80 00 02 */	li r4, 2
lbl_800B7FDC:
/* 800B7FDC  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 800B7FE0  54 9F 18 38 */	slwi r31, r4, 3
/* 800B7FE4  7C 63 F8 2E */	lwzx r3, r3, r31
/* 800B7FE8  48 2B 0B FD */	bl strlen
/* 800B7FEC  28 03 00 00 */	cmplwi r3, 0
/* 800B7FF0  41 82 00 A4 */	beq lbl_800B8094
/* 800B7FF4  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 800B7FF8  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800B7FFC  7C 60 FA 14 */	add r3, r0, r31
/* 800B8000  80 03 00 04 */	lwz r0, 4(r3)
/* 800B8004  54 00 10 3A */	slwi r0, r0, 2
/* 800B8008  7C 64 00 2E */	lwzx r3, r4, r0
/* 800B800C  48 2B 0B D9 */	bl strlen
/* 800B8010  28 03 00 00 */	cmplwi r3, 0
/* 800B8014  41 82 00 34 */	beq lbl_800B8048
/* 800B8018  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 800B801C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800B8020  7C 60 FA 14 */	add r3, r0, r31
/* 800B8024  80 03 00 04 */	lwz r0, 4(r3)
/* 800B8028  54 00 10 3A */	slwi r0, r0, 2
/* 800B802C  7C 04 00 2E */	lwzx r0, r4, r0
/* 800B8030  90 1E 01 00 */	stw r0, 0x100(r30)
/* 800B8034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B8038  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B803C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800B8040  80 9E 01 00 */	lwz r4, 0x100(r30)
/* 800B8044  4B F8 E7 BD */	bl setObjectArchive__16dEvent_manager_cFPc
lbl_800B8048:
/* 800B8048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B804C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B8050  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800B8054  7F C4 F3 78 */	mr r4, r30
/* 800B8058  80 BE 05 70 */	lwz r5, 0x570(r30)
/* 800B805C  7C A5 F8 2E */	lwzx r5, r5, r31
/* 800B8060  38 C0 00 FF */	li r6, 0xff
/* 800B8064  4B F8 F6 F5 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 800B8068  B0 7E 0E 1C */	sth r3, 0xe1c(r30)
/* 800B806C  7F C3 F3 78 */	mr r3, r30
/* 800B8070  A8 9E 0E 1C */	lha r4, 0xe1c(r30)
/* 800B8074  38 A0 00 FF */	li r5, 0xff
/* 800B8078  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800B807C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800B8080  38 E0 00 04 */	li r7, 4
/* 800B8084  39 00 00 01 */	li r8, 1
/* 800B8088  4B F6 35 F5 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 800B808C  38 00 00 01 */	li r0, 1
/* 800B8090  48 00 00 08 */	b lbl_800B8098
lbl_800B8094:
/* 800B8094  38 00 00 00 */	li r0, 0
lbl_800B8098:
/* 800B8098  2C 00 00 00 */	cmpwi r0, 0
/* 800B809C  41 82 00 0C */	beq lbl_800B80A8
/* 800B80A0  7F C3 F3 78 */	mr r3, r30
/* 800B80A4  48 00 00 08 */	b lbl_800B80AC
lbl_800B80A8:
/* 800B80A8  38 60 00 00 */	li r3, 0
lbl_800B80AC:
/* 800B80AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B80B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B80B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B80B8  7C 08 03 A6 */	mtlr r0
/* 800B80BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800B80C0  4E 80 00 20 */	blr 
