lbl_80CEC264:
/* 80CEC264  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CEC268  7C 08 02 A6 */	mflr r0
/* 80CEC26C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CEC270  39 61 00 40 */	addi r11, r1, 0x40
/* 80CEC274  4B 67 5F 68 */	b _savegpr_29
/* 80CEC278  7C 7D 1B 78 */	mr r29, r3
/* 80CEC27C  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 80CEC280  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 80CEC284  7C 1F 03 78 */	mr r31, r0
/* 80CEC288  54 60 86 3E */	rlwinm r0, r3, 0x10, 0x18, 0x1f
/* 80CEC28C  7C 1E 03 78 */	mr r30, r0
/* 80CEC290  38 61 00 10 */	addi r3, r1, 0x10
/* 80CEC294  38 80 00 00 */	li r4, 0
/* 80CEC298  A8 BD 04 B6 */	lha r5, 0x4b6(r29)
/* 80CEC29C  38 C0 00 00 */	li r6, 0
/* 80CEC2A0  4B 57 B1 54 */	b __ct__5csXyzFsss
/* 80CEC2A4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CEC2A8  54 00 E7 BF */	rlwinm. r0, r0, 0x1c, 0x1e, 0x1f
/* 80CEC2AC  40 82 00 44 */	bne lbl_80CEC2F0
/* 80CEC2B0  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80CEC2B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CEC2B8  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80CEC2BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CEC2C0  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80CEC2C4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CEC2C8  38 61 00 18 */	addi r3, r1, 0x18
/* 80CEC2CC  7F E4 FB 78 */	mr r4, r31
/* 80CEC2D0  7F C5 F3 78 */	mr r5, r30
/* 80CEC2D4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80CEC2D8  7C 06 07 74 */	extsb r6, r0
/* 80CEC2DC  38 E1 00 10 */	addi r7, r1, 0x10
/* 80CEC2E0  39 00 00 00 */	li r8, 0
/* 80CEC2E4  39 20 00 08 */	li r9, 8
/* 80CEC2E8  4B 32 FF 58 */	b fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
/* 80CEC2EC  48 00 00 38 */	b lbl_80CEC324
lbl_80CEC2F0:
/* 80CEC2F0  38 00 00 00 */	li r0, 0
/* 80CEC2F4  90 01 00 08 */	stw r0, 8(r1)
/* 80CEC2F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CEC2FC  38 7D 04 A8 */	addi r3, r29, 0x4a8
/* 80CEC300  7F E4 FB 78 */	mr r4, r31
/* 80CEC304  7F C5 F3 78 */	mr r5, r30
/* 80CEC308  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80CEC30C  7C 06 07 74 */	extsb r6, r0
/* 80CEC310  38 E1 00 10 */	addi r7, r1, 0x10
/* 80CEC314  39 00 00 08 */	li r8, 8
/* 80CEC318  39 20 00 00 */	li r9, 0
/* 80CEC31C  39 40 00 00 */	li r10, 0
/* 80CEC320  4B 32 FC 44 */	b fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb
lbl_80CEC324:
/* 80CEC324  39 61 00 40 */	addi r11, r1, 0x40
/* 80CEC328  4B 67 5F 00 */	b _restgpr_29
/* 80CEC32C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CEC330  7C 08 03 A6 */	mtlr r0
/* 80CEC334  38 21 00 40 */	addi r1, r1, 0x40
/* 80CEC338  4E 80 00 20 */	blr 
