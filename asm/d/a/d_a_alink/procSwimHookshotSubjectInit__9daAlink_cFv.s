lbl_80104C50:
/* 80104C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80104C54  7C 08 02 A6 */	mflr r0
/* 80104C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80104C5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80104C60  7C 7F 1B 78 */	mr r31, r3
/* 80104C64  38 80 00 7D */	li r4, 0x7d
/* 80104C68  4B FB E1 3D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80104C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80104C70  40 82 00 0C */	bne lbl_80104C7C
/* 80104C74  38 60 00 00 */	li r3, 0
/* 80104C78  48 00 00 F0 */	b lbl_80104D68
lbl_80104C7C:
/* 80104C7C  7F E3 FB 78 */	mr r3, r31
/* 80104C80  38 80 00 01 */	li r4, 1
/* 80104C84  48 00 44 69 */	bl initHookshotUpperAnimeSpeed__9daAlink_cFi
/* 80104C88  7F E3 FB 78 */	mr r3, r31
/* 80104C8C  38 80 00 14 */	li r4, 0x14
/* 80104C90  4B FA 78 C9 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80104C94  2C 03 00 00 */	cmpwi r3, 0
/* 80104C98  40 82 00 28 */	bne lbl_80104CC0
/* 80104C9C  7F E3 FB 78 */	mr r3, r31
/* 80104CA0  38 80 00 14 */	li r4, 0x14
/* 80104CA4  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha
/* 80104CA8  38 A5 ED 2C */	addi r5, r5, m__18daAlinkHIO_swim_c0@l
/* 80104CAC  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 80104CB0  3C A0 80 39 */	lis r5, m__22daAlinkHIO_hookshot_c0@ha
/* 80104CB4  38 A5 E9 C0 */	addi r5, r5, m__22daAlinkHIO_hookshot_c0@l
/* 80104CB8  C0 45 00 44 */	lfs f2, 0x44(r5)
/* 80104CBC  4B FA 83 25 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_80104CC0:
/* 80104CC0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80104CC4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80104CC8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80104CCC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80104CD0  A8 9F 30 80 */	lha r4, 0x3080(r31)
/* 80104CD4  7C 80 07 35 */	extsh. r0, r4
/* 80104CD8  41 82 00 1C */	beq lbl_80104CF4
/* 80104CDC  7F E3 FB 78 */	mr r3, r31
/* 80104CE0  38 A0 00 00 */	li r5, 0
/* 80104CE4  38 C0 00 00 */	li r6, 0
/* 80104CE8  4B FA 8E 91 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 80104CEC  38 00 00 00 */	li r0, 0
/* 80104CF0  B0 1F 30 80 */	sth r0, 0x3080(r31)
lbl_80104CF4:
/* 80104CF4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80104CF8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80104CFC  41 82 00 14 */	beq lbl_80104D10
/* 80104D00  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 80104D04  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80104D08  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80104D0C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_80104D10:
/* 80104D10  38 00 00 00 */	li r0, 0
/* 80104D14  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80104D18  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80104D1C  7F E3 FB 78 */	mr r3, r31
/* 80104D20  4B FF CC F9 */	bl getSwimFrontMaxSpeed__9daAlink_cCFv
/* 80104D24  D0 3F 05 94 */	stfs f1, 0x594(r31)
/* 80104D28  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80104D2C  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80104D30  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80104D34  D0 1F 34 80 */	stfs f0, 0x3480(r31)
/* 80104D38  38 00 00 00 */	li r0, 0
/* 80104D3C  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 80104D40  B0 1F 30 D0 */	sth r0, 0x30d0(r31)
/* 80104D44  7F E3 FB 78 */	mr r3, r31
/* 80104D48  48 00 43 29 */	bl setHookshotReadyMaterial__9daAlink_cFv
/* 80104D4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80104D50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80104D54  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80104D58  64 00 00 10 */	oris r0, r0, 0x10
/* 80104D5C  60 00 40 00 */	ori r0, r0, 0x4000
/* 80104D60  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80104D64  38 60 00 01 */	li r3, 1
lbl_80104D68:
/* 80104D68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80104D6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80104D70  7C 08 03 A6 */	mtlr r0
/* 80104D74  38 21 00 10 */	addi r1, r1, 0x10
/* 80104D78  4E 80 00 20 */	blr 
