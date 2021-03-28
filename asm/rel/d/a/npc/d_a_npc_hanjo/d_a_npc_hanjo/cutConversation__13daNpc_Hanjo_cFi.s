lbl_809FC438:
/* 809FC438  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809FC43C  7C 08 02 A6 */	mflr r0
/* 809FC440  90 01 00 44 */	stw r0, 0x44(r1)
/* 809FC444  39 61 00 40 */	addi r11, r1, 0x40
/* 809FC448  4B 96 5D 7C */	b _savegpr_23
/* 809FC44C  7C 7B 1B 78 */	mr r27, r3
/* 809FC450  7C 97 23 78 */	mr r23, r4
/* 809FC454  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha
/* 809FC458  3B E3 06 00 */	addi r31, r3, m__19daNpc_Hanjo_Param_c@l
/* 809FC45C  3B C0 00 00 */	li r30, 0
/* 809FC460  3B A0 FF FF */	li r29, -1
/* 809FC464  3B 00 FF FF */	li r24, -1
/* 809FC468  3B 80 00 00 */	li r28, 0
/* 809FC46C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FC470  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 809FC474  3B 3A 4F F8 */	addi r25, r26, 0x4ff8
/* 809FC478  7F 23 CB 78 */	mr r3, r25
/* 809FC47C  3C A0 80 A0 */	lis r5, struct_80A007F8+0x0@ha
/* 809FC480  38 A5 07 F8 */	addi r5, r5, struct_80A007F8+0x0@l
/* 809FC484  38 A5 01 21 */	addi r5, r5, 0x121
/* 809FC488  38 C0 00 03 */	li r6, 3
/* 809FC48C  4B 64 BC 60 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809FC490  28 03 00 00 */	cmplwi r3, 0
/* 809FC494  41 82 00 08 */	beq lbl_809FC49C
/* 809FC498  83 A3 00 00 */	lwz r29, 0(r3)
lbl_809FC49C:
/* 809FC49C  7F 23 CB 78 */	mr r3, r25
/* 809FC4A0  7E E4 BB 78 */	mr r4, r23
/* 809FC4A4  3C A0 80 A0 */	lis r5, struct_80A007F8+0x0@ha
/* 809FC4A8  38 A5 07 F8 */	addi r5, r5, struct_80A007F8+0x0@l
/* 809FC4AC  38 A5 01 26 */	addi r5, r5, 0x126
/* 809FC4B0  38 C0 00 03 */	li r6, 3
/* 809FC4B4  4B 64 BC 38 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809FC4B8  28 03 00 00 */	cmplwi r3, 0
/* 809FC4BC  41 82 00 08 */	beq lbl_809FC4C4
/* 809FC4C0  83 03 00 00 */	lwz r24, 0(r3)
lbl_809FC4C4:
/* 809FC4C4  7F 23 CB 78 */	mr r3, r25
/* 809FC4C8  7E E4 BB 78 */	mr r4, r23
/* 809FC4CC  3C A0 80 A0 */	lis r5, struct_80A007F8+0x0@ha
/* 809FC4D0  38 A5 07 F8 */	addi r5, r5, struct_80A007F8+0x0@l
/* 809FC4D4  38 A5 01 2B */	addi r5, r5, 0x12b
/* 809FC4D8  38 C0 00 03 */	li r6, 3
/* 809FC4DC  4B 64 BC 10 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809FC4E0  28 03 00 00 */	cmplwi r3, 0
/* 809FC4E4  41 82 00 08 */	beq lbl_809FC4EC
/* 809FC4E8  83 83 00 00 */	lwz r28, 0(r3)
lbl_809FC4EC:
/* 809FC4EC  7F 23 CB 78 */	mr r3, r25
/* 809FC4F0  7E E4 BB 78 */	mr r4, r23
/* 809FC4F4  4B 64 B8 58 */	b getIsAddvance__16dEvent_manager_cFi
/* 809FC4F8  2C 03 00 00 */	cmpwi r3, 0
/* 809FC4FC  41 82 00 B8 */	beq lbl_809FC5B4
/* 809FC500  2C 1D 00 00 */	cmpwi r29, 0
/* 809FC504  41 82 00 14 */	beq lbl_809FC518
/* 809FC508  41 80 00 AC */	blt lbl_809FC5B4
/* 809FC50C  2C 1D 00 04 */	cmpwi r29, 4
/* 809FC510  40 80 00 A4 */	bge lbl_809FC5B4
/* 809FC514  48 00 00 58 */	b lbl_809FC56C
lbl_809FC518:
/* 809FC518  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 809FC51C  2C 00 00 00 */	cmpwi r0, 0
/* 809FC520  41 82 00 24 */	beq lbl_809FC544
/* 809FC524  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 809FC528  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 809FC52C  4B 74 93 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FC530  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 809FC534  38 00 00 00 */	li r0, 0
/* 809FC538  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 809FC53C  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FC540  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_809FC544:
/* 809FC544  7F 63 DB 78 */	mr r3, r27
/* 809FC548  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 809FC54C  38 A0 00 00 */	li r5, 0
/* 809FC550  4B 74 F6 A0 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809FC554  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 809FC558  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809FC55C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809FC560  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809FC564  4B 74 91 7C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809FC568  48 00 00 4C */	b lbl_809FC5B4
lbl_809FC56C:
/* 809FC56C  2C 1D 00 02 */	cmpwi r29, 2
/* 809FC570  40 82 00 28 */	bne lbl_809FC598
/* 809FC574  7F 63 DB 78 */	mr r3, r27
/* 809FC578  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 809FC57C  38 A0 00 00 */	li r5, 0
/* 809FC580  4B 74 F6 70 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809FC584  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 809FC588  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809FC58C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809FC590  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809FC594  4B 74 91 4C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_809FC598:
/* 809FC598  2C 18 00 01 */	cmpwi r24, 1
/* 809FC59C  40 82 00 18 */	bne lbl_809FC5B4
/* 809FC5A0  38 7B 10 C8 */	addi r3, r27, 0x10c8
/* 809FC5A4  4B 74 91 64 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FC5A8  7C 64 1B 78 */	mr r4, r3
/* 809FC5AC  38 7A 4E C8 */	addi r3, r26, 0x4ec8
/* 809FC5B0  4B 64 70 AC */	b setPt2__14dEvt_control_cFPv
lbl_809FC5B4:
/* 809FC5B4  80 7F 01 B8 */	lwz r3, 0x1b8(r31)
/* 809FC5B8  80 1F 01 BC */	lwz r0, 0x1bc(r31)
/* 809FC5BC  90 61 00 08 */	stw r3, 8(r1)
/* 809FC5C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809FC5C4  2C 1D 00 00 */	cmpwi r29, 0
/* 809FC5C8  41 82 00 14 */	beq lbl_809FC5DC
/* 809FC5CC  41 80 02 24 */	blt lbl_809FC7F0
/* 809FC5D0  2C 1D 00 04 */	cmpwi r29, 4
/* 809FC5D4  40 80 02 1C */	bge lbl_809FC7F0
/* 809FC5D8  48 00 00 D0 */	b lbl_809FC6A8
lbl_809FC5DC:
/* 809FC5DC  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 809FC5E0  2C 00 00 01 */	cmpwi r0, 1
/* 809FC5E4  41 82 00 28 */	beq lbl_809FC60C
/* 809FC5E8  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 809FC5EC  4B 74 91 10 */	b remove__18daNpcT_ActorMngr_cFv
/* 809FC5F0  38 00 00 00 */	li r0, 0
/* 809FC5F4  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 809FC5F8  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FC5FC  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 809FC600  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FC604  38 00 00 01 */	li r0, 1
/* 809FC608  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_809FC60C:
/* 809FC60C  38 00 00 00 */	li r0, 0
/* 809FC610  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FC614  A8 9B 0D C8 */	lha r4, 0xdc8(r27)
/* 809FC618  A8 1B 0D 7A */	lha r0, 0xd7a(r27)
/* 809FC61C  7C 04 00 00 */	cmpw r4, r0
/* 809FC620  40 82 00 0C */	bne lbl_809FC62C
/* 809FC624  3B C0 00 01 */	li r30, 1
/* 809FC628  48 00 01 C8 */	b lbl_809FC7F0
lbl_809FC62C:
/* 809FC62C  7F 63 DB 78 */	mr r3, r27
/* 809FC630  38 A0 00 07 */	li r5, 7
/* 809FC634  38 C0 00 0E */	li r6, 0xe
/* 809FC638  38 E0 00 0F */	li r7, 0xf
/* 809FC63C  39 00 00 00 */	li r8, 0
/* 809FC640  4B 74 F0 08 */	b step__8daNpcT_cFsiiii
/* 809FC644  2C 03 00 00 */	cmpwi r3, 0
/* 809FC648  41 82 01 A8 */	beq lbl_809FC7F0
/* 809FC64C  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 809FC650  2C 00 00 07 */	cmpwi r0, 7
/* 809FC654  41 82 00 24 */	beq lbl_809FC678
/* 809FC658  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 809FC65C  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 809FC660  4B 74 92 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FC664  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 809FC668  38 00 00 07 */	li r0, 7
/* 809FC66C  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 809FC670  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FC674  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_809FC678:
/* 809FC678  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 809FC67C  2C 00 00 00 */	cmpwi r0, 0
/* 809FC680  41 82 01 70 */	beq lbl_809FC7F0
/* 809FC684  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 809FC688  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 809FC68C  4B 74 92 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FC690  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 809FC694  38 00 00 00 */	li r0, 0
/* 809FC698  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 809FC69C  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FC6A0  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 809FC6A4  48 00 01 4C */	b lbl_809FC7F0
lbl_809FC6A8:
/* 809FC6A8  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 809FC6AC  2C 00 00 01 */	cmpwi r0, 1
/* 809FC6B0  41 82 00 28 */	beq lbl_809FC6D8
/* 809FC6B4  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 809FC6B8  4B 74 90 44 */	b remove__18daNpcT_ActorMngr_cFv
/* 809FC6BC  38 00 00 00 */	li r0, 0
/* 809FC6C0  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 809FC6C4  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FC6C8  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 809FC6CC  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FC6D0  38 00 00 01 */	li r0, 1
/* 809FC6D4  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_809FC6D8:
/* 809FC6D8  38 00 00 00 */	li r0, 0
/* 809FC6DC  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FC6E0  2C 1D 00 02 */	cmpwi r29, 2
/* 809FC6E4  40 82 00 38 */	bne lbl_809FC71C
/* 809FC6E8  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 809FC6EC  2C 00 00 00 */	cmpwi r0, 0
/* 809FC6F0  41 82 00 24 */	beq lbl_809FC714
/* 809FC6F4  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 809FC6F8  4B 74 90 04 */	b remove__18daNpcT_ActorMngr_cFv
/* 809FC6FC  38 00 00 00 */	li r0, 0
/* 809FC700  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 809FC704  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FC708  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 809FC70C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FC710  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_809FC714:
/* 809FC714  38 00 00 00 */	li r0, 0
/* 809FC718  98 1B 0C FF */	stb r0, 0xcff(r27)
lbl_809FC71C:
/* 809FC71C  2C 1D 00 03 */	cmpwi r29, 3
/* 809FC720  40 82 00 8C */	bne lbl_809FC7AC
/* 809FC724  A8 9B 0D C8 */	lha r4, 0xdc8(r27)
/* 809FC728  A8 1B 0D 7A */	lha r0, 0xd7a(r27)
/* 809FC72C  7C 04 00 00 */	cmpw r4, r0
/* 809FC730  41 82 00 7C */	beq lbl_809FC7AC
/* 809FC734  7F 63 DB 78 */	mr r3, r27
/* 809FC738  38 A0 FF FF */	li r5, -1
/* 809FC73C  38 C0 FF FF */	li r6, -1
/* 809FC740  38 E0 00 0F */	li r7, 0xf
/* 809FC744  39 00 00 00 */	li r8, 0
/* 809FC748  4B 74 EF 00 */	b step__8daNpcT_cFsiiii
/* 809FC74C  2C 03 00 00 */	cmpwi r3, 0
/* 809FC750  41 82 00 5C */	beq lbl_809FC7AC
/* 809FC754  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 809FC758  2C 00 00 07 */	cmpwi r0, 7
/* 809FC75C  41 82 00 24 */	beq lbl_809FC780
/* 809FC760  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 809FC764  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 809FC768  4B 74 91 30 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FC76C  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 809FC770  38 00 00 07 */	li r0, 7
/* 809FC774  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 809FC778  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FC77C  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_809FC780:
/* 809FC780  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 809FC784  2C 00 00 00 */	cmpwi r0, 0
/* 809FC788  41 82 00 24 */	beq lbl_809FC7AC
/* 809FC78C  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 809FC790  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 809FC794  4B 74 91 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FC798  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 809FC79C  38 00 00 00 */	li r0, 0
/* 809FC7A0  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 809FC7A4  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FC7A8  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_809FC7AC:
/* 809FC7AC  93 81 00 08 */	stw r28, 8(r1)
/* 809FC7B0  7F 63 DB 78 */	mr r3, r27
/* 809FC7B4  38 81 00 08 */	addi r4, r1, 8
/* 809FC7B8  38 A0 00 00 */	li r5, 0
/* 809FC7BC  38 C0 00 00 */	li r6, 0
/* 809FC7C0  38 E0 00 00 */	li r7, 0
/* 809FC7C4  4B 74 F4 B4 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809FC7C8  2C 03 00 00 */	cmpwi r3, 0
/* 809FC7CC  41 82 00 24 */	beq lbl_809FC7F0
/* 809FC7D0  2C 1C 00 00 */	cmpwi r28, 0
/* 809FC7D4  40 82 00 18 */	bne lbl_809FC7EC
/* 809FC7D8  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 809FC7DC  28 00 00 01 */	cmplwi r0, 1
/* 809FC7E0  40 82 00 10 */	bne lbl_809FC7F0
/* 809FC7E4  3B C0 00 01 */	li r30, 1
/* 809FC7E8  48 00 00 08 */	b lbl_809FC7F0
lbl_809FC7EC:
/* 809FC7EC  3B C0 00 01 */	li r30, 1
lbl_809FC7F0:
/* 809FC7F0  7F C3 F3 78 */	mr r3, r30
/* 809FC7F4  39 61 00 40 */	addi r11, r1, 0x40
/* 809FC7F8  4B 96 5A 18 */	b _restgpr_23
/* 809FC7FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809FC800  7C 08 03 A6 */	mtlr r0
/* 809FC804  38 21 00 40 */	addi r1, r1, 0x40
/* 809FC808  4E 80 00 20 */	blr 
