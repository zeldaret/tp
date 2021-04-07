lbl_80088FE0:
/* 80088FE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80088FE4  7C 08 02 A6 */	mflr r0
/* 80088FE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80088FEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80088FF0  48 2D 91 ED */	bl _savegpr_29
/* 80088FF4  7C 7D 1B 78 */	mr r29, r3
/* 80088FF8  7C 9E 23 78 */	mr r30, r4
/* 80088FFC  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80089000  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80089004  41 82 00 28 */	beq lbl_8008902C
/* 80089008  4B FF FC 1D */	bl searchEventArgData__9dCamera_cFPc
/* 8008900C  2C 03 FF FF */	cmpwi r3, -1
/* 80089010  40 82 00 0C */	bne lbl_8008901C
/* 80089014  38 60 00 00 */	li r3, 0
/* 80089018  48 00 00 5C */	b lbl_80089074
lbl_8008901C:
/* 8008901C  1C 03 00 18 */	mulli r0, r3, 0x18
/* 80089020  7C 7D 02 14 */	add r3, r29, r0
/* 80089024  80 63 05 28 */	lwz r3, 0x528(r3)
/* 80089028  48 00 00 4C */	b lbl_80089074
lbl_8008902C:
/* 8008902C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80089030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80089034  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80089038  7F E3 FB 78 */	mr r3, r31
/* 8008903C  80 9D 04 EC */	lwz r4, 0x4ec(r29)
/* 80089040  7F C5 F3 78 */	mr r5, r30
/* 80089044  4B FB F1 01 */	bl getMySubstanceNum__16dEvent_manager_cFiPCc
/* 80089048  2C 03 00 00 */	cmpwi r3, 0
/* 8008904C  41 82 00 1C */	beq lbl_80089068
/* 80089050  7F E3 FB 78 */	mr r3, r31
/* 80089054  80 9D 04 EC */	lwz r4, 0x4ec(r29)
/* 80089058  7F C5 F3 78 */	mr r5, r30
/* 8008905C  38 C0 00 04 */	li r6, 4
/* 80089060  4B FB F0 8D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80089064  48 00 00 10 */	b lbl_80089074
lbl_80089068:
/* 80089068  38 00 00 01 */	li r0, 1
/* 8008906C  98 1D 04 F8 */	stb r0, 0x4f8(r29)
/* 80089070  38 60 00 00 */	li r3, 0
lbl_80089074:
/* 80089074  39 61 00 20 */	addi r11, r1, 0x20
/* 80089078  48 2D 91 B1 */	bl _restgpr_29
/* 8008907C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80089080  7C 08 03 A6 */	mtlr r0
/* 80089084  38 21 00 20 */	addi r1, r1, 0x20
/* 80089088  4E 80 00 20 */	blr 
