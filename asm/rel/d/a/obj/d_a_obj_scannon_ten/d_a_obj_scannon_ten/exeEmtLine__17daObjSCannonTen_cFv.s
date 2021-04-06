lbl_80CCC8B8:
/* 80CCC8B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CCC8BC  7C 08 02 A6 */	mflr r0
/* 80CCC8C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CCC8C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80CCC8C8  4B 69 59 15 */	bl _savegpr_29
/* 80CCC8CC  7C 7D 1B 78 */	mr r29, r3
/* 80CCC8D0  80 03 06 00 */	lwz r0, 0x600(r3)
/* 80CCC8D4  28 00 00 00 */	cmplwi r0, 0
/* 80CCC8D8  41 82 00 8C */	beq lbl_80CCC964
/* 80CCC8DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCC8E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCC8E4  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80CCC8E8  7C 00 07 74 */	extsb r0, r0
/* 80CCC8EC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80CCC8F0  7C 63 02 14 */	add r3, r3, r0
/* 80CCC8F4  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 80CCC8F8  28 1F 00 00 */	cmplwi r31, 0
/* 80CCC8FC  41 82 00 34 */	beq lbl_80CCC930
/* 80CCC900  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80CCC904  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CCC908  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80CCC90C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CCC910  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80CCC914  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CCC918  7F E3 FB 78 */	mr r3, r31
/* 80CCC91C  4B 4B 4C D5 */	bl dCam_getAngleX__FP12camera_class
/* 80CCC920  7C 7E 1B 78 */	mr r30, r3
/* 80CCC924  7F E3 FB 78 */	mr r3, r31
/* 80CCC928  4B 4B 4C A5 */	bl dCam_getAngleY__FP12camera_class
/* 80CCC92C  7C 64 1B 78 */	mr r4, r3
lbl_80CCC930:
/* 80CCC930  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80CCC934  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80CCC938  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80CCC93C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CCC940  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80CCC944  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 80CCC948  D0 43 00 AC */	stfs f2, 0xac(r3)
/* 80CCC94C  7F C3 07 34 */	extsh r3, r30
/* 80CCC950  7C 84 07 34 */	extsh r4, r4
/* 80CCC954  38 A0 00 00 */	li r5, 0
/* 80CCC958  80 DD 06 00 */	lwz r6, 0x600(r29)
/* 80CCC95C  38 C6 00 68 */	addi r6, r6, 0x68
/* 80CCC960  4B 5B 3D D5 */	bl JPAGetXYZRotateMtx__FsssPA4_f
lbl_80CCC964:
/* 80CCC964  39 61 00 30 */	addi r11, r1, 0x30
/* 80CCC968  4B 69 58 C1 */	bl _restgpr_29
/* 80CCC96C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CCC970  7C 08 03 A6 */	mtlr r0
/* 80CCC974  38 21 00 30 */	addi r1, r1, 0x30
/* 80CCC978  4E 80 00 20 */	blr 
