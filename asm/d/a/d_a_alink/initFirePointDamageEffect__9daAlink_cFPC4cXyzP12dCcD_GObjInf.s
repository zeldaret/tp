lbl_80124FA4:
/* 80124FA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80124FA8  7C 08 02 A6 */	mflr r0
/* 80124FAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80124FB0  39 61 00 40 */	addi r11, r1, 0x40
/* 80124FB4  48 23 D2 21 */	bl _savegpr_27
/* 80124FB8  7C 7E 1B 78 */	mr r30, r3
/* 80124FBC  7C 9B 23 78 */	mr r27, r4
/* 80124FC0  3B FE 32 D8 */	addi r31, r30, 0x32d8
/* 80124FC4  38 60 00 00 */	li r3, 0
/* 80124FC8  38 00 00 04 */	li r0, 4
/* 80124FCC  7C 09 03 A6 */	mtctr r0
lbl_80124FD0:
/* 80124FD0  88 1F 00 00 */	lbz r0, 0(r31)
/* 80124FD4  28 00 00 00 */	cmplwi r0, 0
/* 80124FD8  41 82 00 10 */	beq lbl_80124FE8
/* 80124FDC  38 63 00 01 */	addi r3, r3, 1
/* 80124FE0  3B FF 00 30 */	addi r31, r31, 0x30
/* 80124FE4  42 00 FF EC */	bdnz lbl_80124FD0
lbl_80124FE8:
/* 80124FE8  2C 03 00 04 */	cmpwi r3, 4
/* 80124FEC  41 82 01 24 */	beq lbl_80125110
/* 80124FF0  7F C3 F3 78 */	mr r3, r30
/* 80124FF4  7C A4 2B 78 */	mr r4, r5
/* 80124FF8  4B FB 24 FD */	bl getDamageVec__9daAlink_cFP12dCcD_GObjInf
/* 80124FFC  7C 7C 1B 78 */	mr r28, r3
/* 80125000  48 14 21 29 */	bl atan2sX_Z__4cXyzCFv
/* 80125004  7C 7D 1B 78 */	mr r29, r3
/* 80125008  7F 83 E3 78 */	mr r3, r28
/* 8012500C  48 14 21 45 */	bl atan2sY_XZ__4cXyzCFv
/* 80125010  7C 64 1B 78 */	mr r4, r3
/* 80125014  38 61 00 10 */	addi r3, r1, 0x10
/* 80125018  7F A5 EB 78 */	mr r5, r29
/* 8012501C  38 C0 00 00 */	li r6, 0
/* 80125020  48 14 23 D5 */	bl __ct__5csXyzFsss
/* 80125024  38 7E 2E 44 */	addi r3, r30, 0x2e44
/* 80125028  7F 64 DB 78 */	mr r4, r27
/* 8012502C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80125030  38 C1 00 18 */	addi r6, r1, 0x18
/* 80125034  38 E1 00 08 */	addi r7, r1, 8
/* 80125038  39 00 00 00 */	li r8, 0
/* 8012503C  4B F1 1C 09 */	bl getHitmarkPosAndAngle__9dJntCol_cCFPC4cXyzPC5csXyzP4cXyzP5csXyzi
/* 80125040  2C 03 FF FF */	cmpwi r3, -1
/* 80125044  41 82 00 CC */	beq lbl_80125110
/* 80125048  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8012504C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80125050  40 82 00 20 */	bne lbl_80125070
/* 80125054  2C 03 00 01 */	cmpwi r3, 1
/* 80125058  41 82 00 B8 */	beq lbl_80125110
/* 8012505C  2C 03 00 0F */	cmpwi r3, 0xf
/* 80125060  41 82 00 B0 */	beq lbl_80125110
/* 80125064  2C 03 00 10 */	cmpwi r3, 0x10
/* 80125068  40 82 00 08 */	bne lbl_80125070
/* 8012506C  48 00 00 A4 */	b lbl_80125110
lbl_80125070:
/* 80125070  80 9E 2E 44 */	lwz r4, 0x2e44(r30)
/* 80125074  1C 03 00 0C */	mulli r0, r3, 0xc
/* 80125078  7C 64 02 14 */	add r3, r4, r0
/* 8012507C  A8 03 00 02 */	lha r0, 2(r3)
/* 80125080  B0 1F 00 02 */	sth r0, 2(r31)
/* 80125084  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80125088  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8012508C  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80125090  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80125094  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80125098  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8012509C  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 801250A0  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 801250A4  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 801250A8  C0 03 00 04 */	lfs f0, 4(r3)
/* 801250AC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 801250B0  C0 03 00 08 */	lfs f0, 8(r3)
/* 801250B4  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 801250B8  38 00 00 01 */	li r0, 1
/* 801250BC  98 1F 00 00 */	stb r0, 0(r31)
/* 801250C0  38 00 00 00 */	li r0, 0
/* 801250C4  90 1F 00 04 */	stw r0, 4(r31)
/* 801250C8  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 801250CC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801250D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801250D4  A0 1F 00 02 */	lhz r0, 2(r31)
/* 801250D8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 801250DC  7C 63 02 14 */	add r3, r3, r0
/* 801250E0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 801250E4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 801250E8  48 22 13 C9 */	bl PSMTXCopy
/* 801250EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801250F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801250F4  7C 64 1B 78 */	mr r4, r3
/* 801250F8  48 22 14 B9 */	bl PSMTXInverse
/* 801250FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80125100  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80125104  38 81 00 18 */	addi r4, r1, 0x18
/* 80125108  38 BF 00 18 */	addi r5, r31, 0x18
/* 8012510C  48 22 1C 61 */	bl PSMTXMultVec
lbl_80125110:
/* 80125110  39 61 00 40 */	addi r11, r1, 0x40
/* 80125114  48 23 D1 0D */	bl _restgpr_27
/* 80125118  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8012511C  7C 08 03 A6 */	mtlr r0
/* 80125120  38 21 00 40 */	addi r1, r1, 0x40
/* 80125124  4E 80 00 20 */	blr 
