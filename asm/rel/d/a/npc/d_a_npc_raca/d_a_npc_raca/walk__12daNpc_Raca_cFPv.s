lbl_80AB7710:
/* 80AB7710  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AB7714  7C 08 02 A6 */	mflr r0
/* 80AB7718  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AB771C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80AB7720  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80AB7724  7C 7F 1B 78 */	mr r31, r3
/* 80AB7728  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AB772C  2C 00 00 02 */	cmpwi r0, 2
/* 80AB7730  41 82 00 A0 */	beq lbl_80AB77D0
/* 80AB7734  40 80 00 10 */	bge lbl_80AB7744
/* 80AB7738  2C 00 00 00 */	cmpwi r0, 0
/* 80AB773C  40 80 00 14 */	bge lbl_80AB7750
/* 80AB7740  48 00 01 BC */	b lbl_80AB78FC
lbl_80AB7744:
/* 80AB7744  2C 00 00 04 */	cmpwi r0, 4
/* 80AB7748  40 80 01 B4 */	bge lbl_80AB78FC
/* 80AB774C  48 00 01 A4 */	b lbl_80AB78F0
lbl_80AB7750:
/* 80AB7750  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AB7754  2C 00 00 00 */	cmpwi r0, 0
/* 80AB7758  40 82 00 78 */	bne lbl_80AB77D0
/* 80AB775C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AB7760  2C 00 00 07 */	cmpwi r0, 7
/* 80AB7764  41 82 00 28 */	beq lbl_80AB778C
/* 80AB7768  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AB776C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB7770  4B 68 E1 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB7774  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AB7778  38 00 00 07 */	li r0, 7
/* 80AB777C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AB7780  3C 60 80 AC */	lis r3, lit_4579@ha
/* 80AB7784  C0 03 8F 7C */	lfs f0, lit_4579@l(r3)
/* 80AB7788  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AB778C:
/* 80AB778C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AB7790  2C 00 00 07 */	cmpwi r0, 7
/* 80AB7794  41 82 00 28 */	beq lbl_80AB77BC
/* 80AB7798  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AB779C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB77A0  4B 68 E0 F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB77A4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AB77A8  38 00 00 07 */	li r0, 7
/* 80AB77AC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AB77B0  3C 60 80 AC */	lis r3, lit_4579@ha
/* 80AB77B4  C0 03 8F 7C */	lfs f0, lit_4579@l(r3)
/* 80AB77B8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AB77BC:
/* 80AB77BC  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80AB77C0  60 00 00 04 */	ori r0, r0, 4
/* 80AB77C4  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80AB77C8  38 00 00 02 */	li r0, 2
/* 80AB77CC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AB77D0:
/* 80AB77D0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AB77D4  2C 00 00 00 */	cmpwi r0, 0
/* 80AB77D8  40 82 01 0C */	bne lbl_80AB78E4
/* 80AB77DC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AB77E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AB77E4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AB77E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AB77EC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AB77F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AB77F4  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80AB77F8  38 81 00 14 */	addi r4, r1, 0x14
/* 80AB77FC  38 A1 00 20 */	addi r5, r1, 0x20
/* 80AB7800  80 DF 0F A4 */	lwz r6, 0xfa4(r31)
/* 80AB7804  A0 C6 00 00 */	lhz r6, 0(r6)
/* 80AB7808  38 E0 00 02 */	li r7, 2
/* 80AB780C  4B 68 E7 A8 */	b getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii
/* 80AB7810  7C 7E 1B 78 */	mr r30, r3
/* 80AB7814  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80AB7818  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AB781C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80AB7820  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AB7824  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80AB7828  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AB782C  7F E3 FB 78 */	mr r3, r31
/* 80AB7830  38 81 00 08 */	addi r4, r1, 8
/* 80AB7834  7F C5 F3 78 */	mr r5, r30
/* 80AB7838  38 C0 00 04 */	li r6, 4
/* 80AB783C  38 E0 08 00 */	li r7, 0x800
/* 80AB7840  4B 69 3F C8 */	b calcSpeedAndAngle__8daNpcT_cF4cXyziss
/* 80AB7844  2C 1E 00 00 */	cmpwi r30, 0
/* 80AB7848  41 82 00 64 */	beq lbl_80AB78AC
/* 80AB784C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80AB7850  FC 00 02 10 */	fabs f0, f0
/* 80AB7854  FC 20 00 18 */	frsp f1, f0
/* 80AB7858  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80AB785C  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80AB7860  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AB7864  40 80 00 48 */	bge lbl_80AB78AC
/* 80AB7868  38 00 C0 00 */	li r0, -16384
/* 80AB786C  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 80AB7870  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AB7874  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AB7878  7C 04 00 00 */	cmpw r4, r0
/* 80AB787C  40 82 00 18 */	bne lbl_80AB7894
/* 80AB7880  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB7884  4B 68 DE 78 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB7888  38 00 00 01 */	li r0, 1
/* 80AB788C  98 1F 0F CC */	stb r0, 0xfcc(r31)
/* 80AB7890  48 00 00 1C */	b lbl_80AB78AC
lbl_80AB7894:
/* 80AB7894  7F E3 FB 78 */	mr r3, r31
/* 80AB7898  38 A0 00 07 */	li r5, 7
/* 80AB789C  38 C0 00 08 */	li r6, 8
/* 80AB78A0  38 E0 00 0F */	li r7, 0xf
/* 80AB78A4  39 00 00 00 */	li r8, 0
/* 80AB78A8  4B 69 3D A0 */	b step__8daNpcT_cFsiiii
lbl_80AB78AC:
/* 80AB78AC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AB78B0  2C 00 00 00 */	cmpwi r0, 0
/* 80AB78B4  41 82 00 28 */	beq lbl_80AB78DC
/* 80AB78B8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB78BC  4B 68 DE 40 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB78C0  38 00 00 00 */	li r0, 0
/* 80AB78C4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AB78C8  3C 60 80 AC */	lis r3, lit_4040@ha
/* 80AB78CC  C0 03 8F 64 */	lfs f0, lit_4040@l(r3)
/* 80AB78D0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AB78D4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB78D8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AB78DC:
/* 80AB78DC  38 00 00 00 */	li r0, 0
/* 80AB78E0  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80AB78E4:
/* 80AB78E4  38 00 00 00 */	li r0, 0
/* 80AB78E8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AB78EC  48 00 00 10 */	b lbl_80AB78FC
lbl_80AB78F0:
/* 80AB78F0  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80AB78F4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80AB78F8  90 1F 06 B8 */	stw r0, 0x6b8(r31)
lbl_80AB78FC:
/* 80AB78FC  38 60 00 01 */	li r3, 1
/* 80AB7900  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80AB7904  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80AB7908  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AB790C  7C 08 03 A6 */	mtlr r0
/* 80AB7910  38 21 00 40 */	addi r1, r1, 0x40
/* 80AB7914  4E 80 00 20 */	blr 
