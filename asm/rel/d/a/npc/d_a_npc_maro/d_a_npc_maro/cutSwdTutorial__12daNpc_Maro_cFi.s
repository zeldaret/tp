lbl_8055E124:
/* 8055E124  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8055E128  7C 08 02 A6 */	mflr r0
/* 8055E12C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8055E130  39 61 00 50 */	addi r11, r1, 0x50
/* 8055E134  4B E0 40 A0 */	b _savegpr_27
/* 8055E138  7C 7D 1B 78 */	mr r29, r3
/* 8055E13C  7C 9B 23 78 */	mr r27, r4
/* 8055E140  3B E0 00 00 */	li r31, 0
/* 8055E144  3B C0 FF FF */	li r30, -1
/* 8055E148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8055E14C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8055E150  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 8055E154  7F 83 E3 78 */	mr r3, r28
/* 8055E158  3C A0 80 56 */	lis r5, struct_80564D58+0x0@ha
/* 8055E15C  38 A5 4D 58 */	addi r5, r5, struct_80564D58+0x0@l
/* 8055E160  38 A5 02 1B */	addi r5, r5, 0x21b
/* 8055E164  38 C0 00 03 */	li r6, 3
/* 8055E168  4B AE 9F 84 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055E16C  28 03 00 00 */	cmplwi r3, 0
/* 8055E170  41 82 00 08 */	beq lbl_8055E178
/* 8055E174  83 C3 00 00 */	lwz r30, 0(r3)
lbl_8055E178:
/* 8055E178  7F 83 E3 78 */	mr r3, r28
/* 8055E17C  7F 64 DB 78 */	mr r4, r27
/* 8055E180  4B AE 9B CC */	b getIsAddvance__16dEvent_manager_cFi
/* 8055E184  2C 03 00 00 */	cmpwi r3, 0
/* 8055E188  41 82 00 AC */	beq lbl_8055E234
/* 8055E18C  2C 1E 00 47 */	cmpwi r30, 0x47
/* 8055E190  41 82 00 14 */	beq lbl_8055E1A4
/* 8055E194  40 80 00 A0 */	bge lbl_8055E234
/* 8055E198  2C 1E 00 02 */	cmpwi r30, 2
/* 8055E19C  40 80 00 98 */	bge lbl_8055E234
/* 8055E1A0  48 00 00 94 */	b lbl_8055E234
lbl_8055E1A4:
/* 8055E1A4  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 8055E1A8  2C 00 00 01 */	cmpwi r0, 1
/* 8055E1AC  41 82 00 28 */	beq lbl_8055E1D4
/* 8055E1B0  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8055E1B4  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8055E1B8  4B BE 76 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055E1BC  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8055E1C0  38 00 00 01 */	li r0, 1
/* 8055E1C4  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8055E1C8  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055E1CC  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055E1D0  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_8055E1D4:
/* 8055E1D4  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 8055E1D8  2C 00 00 00 */	cmpwi r0, 0
/* 8055E1DC  41 82 00 28 */	beq lbl_8055E204
/* 8055E1E0  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8055E1E4  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8055E1E8  4B BE 76 B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055E1EC  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8055E1F0  38 00 00 00 */	li r0, 0
/* 8055E1F4  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8055E1F8  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055E1FC  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055E200  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_8055E204:
/* 8055E204  7F A3 EB 78 */	mr r3, r29
/* 8055E208  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 8055E20C  4B BE C8 0C */	b setAngle__8daNpcT_cFs
/* 8055E210  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8055E214  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8055E218  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8055E21C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8055E220  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8055E224  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8055E228  7F A3 EB 78 */	mr r3, r29
/* 8055E22C  38 81 00 14 */	addi r4, r1, 0x14
/* 8055E230  4B BE C6 D8 */	b setPos__8daNpcT_cF4cXyz
lbl_8055E234:
/* 8055E234  2C 1E 00 01 */	cmpwi r30, 1
/* 8055E238  41 82 00 7C */	beq lbl_8055E2B4
/* 8055E23C  40 80 00 10 */	bge lbl_8055E24C
/* 8055E240  2C 1E 00 00 */	cmpwi r30, 0
/* 8055E244  40 80 00 14 */	bge lbl_8055E258
/* 8055E248  48 00 01 B0 */	b lbl_8055E3F8
lbl_8055E24C:
/* 8055E24C  2C 1E 00 47 */	cmpwi r30, 0x47
/* 8055E250  41 82 01 6C */	beq lbl_8055E3BC
/* 8055E254  48 00 01 A4 */	b lbl_8055E3F8
lbl_8055E258:
/* 8055E258  38 00 00 01 */	li r0, 1
/* 8055E25C  90 1D 0D BC */	stw r0, 0xdbc(r29)
/* 8055E260  7F A3 EB 78 */	mr r3, r29
/* 8055E264  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 8055E268  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8055E26C  7D 89 03 A6 */	mtctr r12
/* 8055E270  4E 80 04 21 */	bctrl 
/* 8055E274  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8055E278  2C 00 00 00 */	cmpwi r0, 0
/* 8055E27C  41 82 00 28 */	beq lbl_8055E2A4
/* 8055E280  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8055E284  4B BE 74 78 */	b remove__18daNpcT_ActorMngr_cFv
/* 8055E288  38 00 00 00 */	li r0, 0
/* 8055E28C  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8055E290  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055E294  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055E298  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8055E29C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8055E2A0  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8055E2A4:
/* 8055E2A4  38 00 00 00 */	li r0, 0
/* 8055E2A8  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8055E2AC  3B E0 00 01 */	li r31, 1
/* 8055E2B0  48 00 01 48 */	b lbl_8055E3F8
lbl_8055E2B4:
/* 8055E2B4  38 00 00 01 */	li r0, 1
/* 8055E2B8  90 1D 0D BC */	stw r0, 0xdbc(r29)
/* 8055E2BC  7F A3 EB 78 */	mr r3, r29
/* 8055E2C0  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 8055E2C4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8055E2C8  7D 89 03 A6 */	mtctr r12
/* 8055E2CC  4E 80 04 21 */	bctrl 
/* 8055E2D0  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055E2D4  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055E2D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8055E2DC  3C 60 80 56 */	lis r3, lit_5731@ha
/* 8055E2E0  C0 03 4C FC */	lfs f0, lit_5731@l(r3)
/* 8055E2E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8055E2E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8055E2EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8055E2F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8055E2F4  A8 9D 0D 7A */	lha r4, 0xd7a(r29)
/* 8055E2F8  38 04 20 00 */	addi r0, r4, 0x2000
/* 8055E2FC  7C 04 07 34 */	extsh r4, r0
/* 8055E300  4B AA E0 DC */	b mDoMtx_YrotS__FPA4_fs
/* 8055E304  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8055E308  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8055E30C  38 81 00 20 */	addi r4, r1, 0x20
/* 8055E310  7C 85 23 78 */	mr r5, r4
/* 8055E314  4B DE 8A 58 */	b PSMTXMultVec
/* 8055E318  38 61 00 08 */	addi r3, r1, 8
/* 8055E31C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8055E320  38 A1 00 20 */	addi r5, r1, 0x20
/* 8055E324  4B D0 87 C0 */	b __pl__4cXyzCFRC3Vec
/* 8055E328  C0 01 00 08 */	lfs f0, 8(r1)
/* 8055E32C  D0 1D 0D 6C */	stfs f0, 0xd6c(r29)
/* 8055E330  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8055E334  D0 1D 0D 70 */	stfs f0, 0xd70(r29)
/* 8055E338  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8055E33C  D0 1D 0D 74 */	stfs f0, 0xd74(r29)
/* 8055E340  80 7D 0B C8 */	lwz r3, 0xbc8(r29)
/* 8055E344  38 1D 0D 6C */	addi r0, r29, 0xd6c
/* 8055E348  7C 63 00 50 */	subf r3, r3, r0
/* 8055E34C  30 03 FF FF */	addic r0, r3, -1
/* 8055E350  7C 00 19 10 */	subfe r0, r0, r3
/* 8055E354  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8055E358  40 82 00 10 */	bne lbl_8055E368
/* 8055E35C  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8055E360  2C 00 00 05 */	cmpwi r0, 5
/* 8055E364  41 82 00 34 */	beq lbl_8055E398
lbl_8055E368:
/* 8055E368  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8055E36C  4B BE 73 90 */	b remove__18daNpcT_ActorMngr_cFv
/* 8055E370  38 00 00 00 */	li r0, 0
/* 8055E374  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8055E378  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055E37C  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055E380  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8055E384  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8055E388  38 00 00 05 */	li r0, 5
/* 8055E38C  90 1D 0C E0 */	stw r0, 0xce0(r29)
/* 8055E390  38 00 00 01 */	li r0, 1
/* 8055E394  48 00 00 08 */	b lbl_8055E39C
lbl_8055E398:
/* 8055E398  38 00 00 00 */	li r0, 0
lbl_8055E39C:
/* 8055E39C  2C 00 00 00 */	cmpwi r0, 0
/* 8055E3A0  41 82 00 0C */	beq lbl_8055E3AC
/* 8055E3A4  38 1D 0D 6C */	addi r0, r29, 0xd6c
/* 8055E3A8  90 1D 0B C8 */	stw r0, 0xbc8(r29)
lbl_8055E3AC:
/* 8055E3AC  38 00 00 00 */	li r0, 0
/* 8055E3B0  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8055E3B4  3B E0 00 01 */	li r31, 1
/* 8055E3B8  48 00 00 40 */	b lbl_8055E3F8
lbl_8055E3BC:
/* 8055E3BC  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8055E3C0  2C 00 00 04 */	cmpwi r0, 4
/* 8055E3C4  41 82 00 2C */	beq lbl_8055E3F0
/* 8055E3C8  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8055E3CC  4B BE 73 30 */	b remove__18daNpcT_ActorMngr_cFv
/* 8055E3D0  38 00 00 00 */	li r0, 0
/* 8055E3D4  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8055E3D8  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055E3DC  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055E3E0  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8055E3E4  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8055E3E8  38 00 00 04 */	li r0, 4
/* 8055E3EC  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8055E3F0:
/* 8055E3F0  38 00 00 00 */	li r0, 0
/* 8055E3F4  98 1D 0C FF */	stb r0, 0xcff(r29)
lbl_8055E3F8:
/* 8055E3F8  7F E3 FB 78 */	mr r3, r31
/* 8055E3FC  39 61 00 50 */	addi r11, r1, 0x50
/* 8055E400  4B E0 3E 20 */	b _restgpr_27
/* 8055E404  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8055E408  7C 08 03 A6 */	mtlr r0
/* 8055E40C  38 21 00 50 */	addi r1, r1, 0x50
/* 8055E410  4E 80 00 20 */	blr 
