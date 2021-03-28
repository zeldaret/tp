lbl_80A3A2A8:
/* 80A3A2A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3A2AC  7C 08 02 A6 */	mflr r0
/* 80A3A2B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3A2B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3A2B8  7C 7F 1B 78 */	mr r31, r3
/* 80A3A2BC  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 80A3A2C0  A0 1F 0E 36 */	lhz r0, 0xe36(r31)
/* 80A3A2C4  54 00 18 38 */	slwi r0, r0, 3
/* 80A3A2C8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A3A2CC  4B 92 E9 18 */	b strlen
/* 80A3A2D0  28 03 00 00 */	cmplwi r3, 0
/* 80A3A2D4  41 82 00 B8 */	beq lbl_80A3A38C
/* 80A3A2D8  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80A3A2DC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80A3A2E0  A0 1F 0E 36 */	lhz r0, 0xe36(r31)
/* 80A3A2E4  54 00 18 38 */	slwi r0, r0, 3
/* 80A3A2E8  7C 63 02 14 */	add r3, r3, r0
/* 80A3A2EC  80 03 00 04 */	lwz r0, 4(r3)
/* 80A3A2F0  54 00 10 3A */	slwi r0, r0, 2
/* 80A3A2F4  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A3A2F8  4B 92 E8 EC */	b strlen
/* 80A3A2FC  28 03 00 00 */	cmplwi r3, 0
/* 80A3A300  41 82 00 3C */	beq lbl_80A3A33C
/* 80A3A304  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80A3A308  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80A3A30C  A0 1F 0E 36 */	lhz r0, 0xe36(r31)
/* 80A3A310  54 00 18 38 */	slwi r0, r0, 3
/* 80A3A314  7C 63 02 14 */	add r3, r3, r0
/* 80A3A318  80 03 00 04 */	lwz r0, 4(r3)
/* 80A3A31C  54 00 10 3A */	slwi r0, r0, 2
/* 80A3A320  7C 04 00 2E */	lwzx r0, r4, r0
/* 80A3A324  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80A3A328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3A32C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A3A330  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A3A334  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80A3A338  4B 60 C4 C8 */	b setObjectArchive__16dEvent_manager_cFPc
lbl_80A3A33C:
/* 80A3A33C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3A340  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A3A344  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A3A348  7F E4 FB 78 */	mr r4, r31
/* 80A3A34C  80 BF 05 B4 */	lwz r5, 0x5b4(r31)
/* 80A3A350  A0 1F 0E 36 */	lhz r0, 0xe36(r31)
/* 80A3A354  54 00 18 38 */	slwi r0, r0, 3
/* 80A3A358  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A3A35C  38 C0 00 FF */	li r6, 0xff
/* 80A3A360  4B 60 D3 F8 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80A3A364  B0 7F 0E 24 */	sth r3, 0xe24(r31)
/* 80A3A368  7F E3 FB 78 */	mr r3, r31
/* 80A3A36C  A8 9F 0E 24 */	lha r4, 0xe24(r31)
/* 80A3A370  38 A0 00 FF */	li r5, 0xff
/* 80A3A374  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A3A378  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A3A37C  38 E0 00 06 */	li r7, 6
/* 80A3A380  39 00 00 01 */	li r8, 1
/* 80A3A384  4B 5E 12 F8 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80A3A388  48 00 00 68 */	b lbl_80A3A3F0
lbl_80A3A38C:
/* 80A3A38C  80 7F 05 5C */	lwz r3, 0x55c(r31)
/* 80A3A390  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80A3A394  40 82 00 0C */	bne lbl_80A3A3A0
/* 80A3A398  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80A3A39C  41 82 00 54 */	beq lbl_80A3A3F0
lbl_80A3A3A0:
/* 80A3A3A0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80A3A3A4  60 00 00 01 */	ori r0, r0, 1
/* 80A3A3A8  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80A3A3AC  7F E3 FB 78 */	mr r3, r31
/* 80A3A3B0  81 9F 0E 40 */	lwz r12, 0xe40(r31)
/* 80A3A3B4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80A3A3B8  7D 89 03 A6 */	mtctr r12
/* 80A3A3BC  4E 80 04 21 */	bctrl 
/* 80A3A3C0  2C 03 00 00 */	cmpwi r3, 0
/* 80A3A3C4  41 82 00 10 */	beq lbl_80A3A3D4
/* 80A3A3C8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80A3A3CC  60 00 00 20 */	ori r0, r0, 0x20
/* 80A3A3D0  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80A3A3D4:
/* 80A3A3D4  88 1F 0E 38 */	lbz r0, 0xe38(r31)
/* 80A3A3D8  28 00 00 00 */	cmplwi r0, 0
/* 80A3A3DC  41 82 00 14 */	beq lbl_80A3A3F0
/* 80A3A3E0  7F E3 FB 78 */	mr r3, r31
/* 80A3A3E4  38 80 00 00 */	li r4, 0
/* 80A3A3E8  38 A0 00 00 */	li r5, 0
/* 80A3A3EC  4B 5E 0D B0 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
lbl_80A3A3F0:
/* 80A3A3F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3A3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3A3F8  7C 08 03 A6 */	mtlr r0
/* 80A3A3FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3A400  4E 80 00 20 */	blr 
