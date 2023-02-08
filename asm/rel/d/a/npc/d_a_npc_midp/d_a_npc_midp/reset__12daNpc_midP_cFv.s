lbl_80A7168C:
/* 80A7168C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A71690  7C 08 02 A6 */	mflr r0
/* 80A71694  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A71698  39 61 00 30 */	addi r11, r1, 0x30
/* 80A7169C  4B 8F 0B 39 */	bl _savegpr_27
/* 80A716A0  7C 7F 1B 78 */	mr r31, r3
/* 80A716A4  3C 60 80 A7 */	lis r3, m__18daNpc_midP_Param_c@ha /* 0x80A739C0@ha */
/* 80A716A8  3B A3 39 C0 */	addi r29, r3, m__18daNpc_midP_Param_c@l /* 0x80A739C0@l */
/* 80A716AC  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80A716B0  38 1F 0F 9C */	addi r0, r31, 0xf9c
/* 80A716B4  7F 83 00 50 */	subf r28, r3, r0
/* 80A716B8  3B 60 00 00 */	li r27, 0
/* 80A716BC  3B C0 00 00 */	li r30, 0
lbl_80A716C0:
/* 80A716C0  38 1E 09 6C */	addi r0, r30, 0x96c
/* 80A716C4  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80A716C8  28 03 00 00 */	cmplwi r3, 0
/* 80A716CC  41 82 00 08 */	beq lbl_80A716D4
/* 80A716D0  4B 6D 40 95 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80A716D4:
/* 80A716D4  3B 7B 00 01 */	addi r27, r27, 1
/* 80A716D8  2C 1B 00 02 */	cmpwi r27, 2
/* 80A716DC  3B DE 00 04 */	addi r30, r30, 4
/* 80A716E0  41 80 FF E0 */	blt lbl_80A716C0
/* 80A716E4  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A716E8  38 80 00 00 */	li r4, 0
/* 80A716EC  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A716F0  7C A3 00 50 */	subf r5, r3, r0
/* 80A716F4  4B 59 1D 65 */	bl memset
/* 80A716F8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A716FC  4B 6D 41 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A71700  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A71704  4B 6D 41 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A71708  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A7170C  4B 6D 3F C9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A71710  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A71714  4B 6D 3F C1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A71718  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A7171C  4B 6D 55 7D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A71720  38 A0 00 00 */	li r5, 0
/* 80A71724  38 60 00 00 */	li r3, 0
/* 80A71728  38 80 00 00 */	li r4, 0
/* 80A7172C  C0 1D 00 A0 */	lfs f0, 0xa0(r29)
/* 80A71730  38 00 00 02 */	li r0, 2
/* 80A71734  7C 09 03 A6 */	mtctr r0
lbl_80A71738:
/* 80A71738  7C DF 22 14 */	add r6, r31, r4
/* 80A7173C  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A71740  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A71744  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A71748  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A7174C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A71750  38 63 00 04 */	addi r3, r3, 4
/* 80A71754  38 84 00 06 */	addi r4, r4, 6
/* 80A71758  42 00 FF E0 */	bdnz lbl_80A71738
/* 80A7175C  38 00 00 00 */	li r0, 0
/* 80A71760  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A71764  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A71768  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A7176C  38 00 FF FF */	li r0, -1
/* 80A71770  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A71774  38 00 00 01 */	li r0, 1
/* 80A71778  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A7177C  C0 3D 00 A4 */	lfs f1, 0xa4(r29)
/* 80A71780  4B 7F 61 D5 */	bl cM_rndF__Ff
/* 80A71784  FC 00 08 1E */	fctiwz f0, f1
/* 80A71788  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A7178C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A71790  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A71794  C0 1D 00 A8 */	lfs f0, 0xa8(r29)
/* 80A71798  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A7179C  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A717A0  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80A717A4  38 80 00 00 */	li r4, 0
/* 80A717A8  7F 85 E3 78 */	mr r5, r28
/* 80A717AC  4B 59 1C AD */	bl memset
/* 80A717B0  7F E3 FB 78 */	mr r3, r31
/* 80A717B4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A717B8  4B 6D 92 61 */	bl setAngle__8daNpcT_cFs
/* 80A717BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A717C0  4B 8F 0A 61 */	bl _restgpr_27
/* 80A717C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A717C8  7C 08 03 A6 */	mtlr r0
/* 80A717CC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A717D0  4E 80 00 20 */	blr 
