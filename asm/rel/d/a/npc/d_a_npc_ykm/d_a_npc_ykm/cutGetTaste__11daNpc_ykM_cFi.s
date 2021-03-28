lbl_80B5806C:
/* 80B5806C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B58070  7C 08 02 A6 */	mflr r0
/* 80B58074  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B58078  39 61 00 50 */	addi r11, r1, 0x50
/* 80B5807C  4B 80 A1 48 */	b _savegpr_23
/* 80B58080  7C 78 1B 78 */	mr r24, r3
/* 80B58084  7C 99 23 78 */	mr r25, r4
/* 80B58088  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha
/* 80B5808C  3B E3 D7 94 */	addi r31, r3, m__17daNpc_ykM_Param_c@l
/* 80B58090  3B A0 00 00 */	li r29, 0
/* 80B58094  3B 80 FF FF */	li r28, -1
/* 80B58098  3B 60 00 00 */	li r27, 0
/* 80B5809C  3B 40 00 00 */	li r26, 0
/* 80B580A0  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B580A4  D0 18 15 08 */	stfs f0, 0x1508(r24)
/* 80B580A8  C0 1F 02 14 */	lfs f0, 0x214(r31)
/* 80B580AC  D0 18 15 0C */	stfs f0, 0x150c(r24)
/* 80B580B0  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 80B580B4  D0 18 15 10 */	stfs f0, 0x1510(r24)
/* 80B580B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B580BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B580C0  A8 98 04 B6 */	lha r4, 0x4b6(r24)
/* 80B580C4  4B 4B 43 18 */	b mDoMtx_YrotS__FPA4_fs
/* 80B580C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B580CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B580D0  38 98 15 08 */	addi r4, r24, 0x1508
/* 80B580D4  7C 85 23 78 */	mr r5, r4
/* 80B580D8  4B 7E EC 94 */	b PSMTXMultVec
/* 80B580DC  38 78 15 08 */	addi r3, r24, 0x1508
/* 80B580E0  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 80B580E4  7C 65 1B 78 */	mr r5, r3
/* 80B580E8  4B 7E EF A8 */	b PSVECAdd
/* 80B580EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B580F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B580F4  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80B580F8  7F C3 F3 78 */	mr r3, r30
/* 80B580FC  7F 24 CB 78 */	mr r4, r25
/* 80B58100  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B58104  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B58108  38 A5 00 97 */	addi r5, r5, 0x97
/* 80B5810C  38 C0 00 03 */	li r6, 3
/* 80B58110  4B 4E FF DC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B58114  28 03 00 00 */	cmplwi r3, 0
/* 80B58118  41 82 00 08 */	beq lbl_80B58120
/* 80B5811C  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B58120:
/* 80B58120  7F C3 F3 78 */	mr r3, r30
/* 80B58124  7F 24 CB 78 */	mr r4, r25
/* 80B58128  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B5812C  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B58130  38 A5 00 9B */	addi r5, r5, 0x9b
/* 80B58134  38 C0 00 03 */	li r6, 3
/* 80B58138  4B 4E FF B4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B5813C  28 03 00 00 */	cmplwi r3, 0
/* 80B58140  41 82 00 08 */	beq lbl_80B58148
/* 80B58144  83 63 00 00 */	lwz r27, 0(r3)
lbl_80B58148:
/* 80B58148  7F C3 F3 78 */	mr r3, r30
/* 80B5814C  7F 24 CB 78 */	mr r4, r25
/* 80B58150  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B58154  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B58158  38 A5 00 A1 */	addi r5, r5, 0xa1
/* 80B5815C  38 C0 00 03 */	li r6, 3
/* 80B58160  4B 4E FF 8C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B58164  28 03 00 00 */	cmplwi r3, 0
/* 80B58168  41 82 00 08 */	beq lbl_80B58170
/* 80B5816C  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B58170:
/* 80B58170  7F C3 F3 78 */	mr r3, r30
/* 80B58174  7F 24 CB 78 */	mr r4, r25
/* 80B58178  4B 4E FB D4 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B5817C  2C 03 00 00 */	cmpwi r3, 0
/* 80B58180  41 82 01 EC */	beq lbl_80B5836C
/* 80B58184  28 1C 00 08 */	cmplwi r28, 8
/* 80B58188  41 81 01 E4 */	bgt lbl_80B5836C
/* 80B5818C  3C 60 80 B6 */	lis r3, lit_6857@ha
/* 80B58190  38 63 EB 28 */	addi r3, r3, lit_6857@l
/* 80B58194  57 80 10 3A */	slwi r0, r28, 2
/* 80B58198  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B5819C  7C 09 03 A6 */	mtctr r0
/* 80B581A0  4E 80 04 20 */	bctr 
lbl_80B581A4:
/* 80B581A4  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B581A8  2C 00 00 00 */	cmpwi r0, 0
/* 80B581AC  41 82 00 24 */	beq lbl_80B581D0
/* 80B581B0  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B581B4  4B 5E D5 48 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B581B8  38 00 00 00 */	li r0, 0
/* 80B581BC  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B581C0  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B581C4  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B581C8  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B581CC  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80B581D0:
/* 80B581D0  38 00 00 00 */	li r0, 0
/* 80B581D4  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B581D8  38 60 00 0B */	li r3, 0xb
/* 80B581DC  4B 5F 49 50 */	b daNpcT_offTmpBit__FUl
/* 80B581E0  38 60 00 0C */	li r3, 0xc
/* 80B581E4  4B 5F 49 48 */	b daNpcT_offTmpBit__FUl
/* 80B581E8  38 60 00 0D */	li r3, 0xd
/* 80B581EC  4B 5F 49 40 */	b daNpcT_offTmpBit__FUl
/* 80B581F0  7F 03 C3 78 */	mr r3, r24
/* 80B581F4  80 98 0A 7C */	lwz r4, 0xa7c(r24)
/* 80B581F8  38 A0 00 00 */	li r5, 0
/* 80B581FC  4B 5F 39 F4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B58200  48 00 01 6C */	b lbl_80B5836C
lbl_80B58204:
/* 80B58204  7F 03 C3 78 */	mr r3, r24
/* 80B58208  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B5820C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B58210  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B58214  4B 4C 24 FC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B58218  B0 78 0D C8 */	sth r3, 0xdc8(r24)
/* 80B5821C  48 00 01 50 */	b lbl_80B5836C
lbl_80B58220:
/* 80B58220  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 80B58224  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B58228  41 82 00 24 */	beq lbl_80B5824C
/* 80B5822C  82 F8 0B 5C */	lwz r23, 0xb5c(r24)
/* 80B58230  38 78 0B 50 */	addi r3, r24, 0xb50
/* 80B58234  4B 5E D6 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58238  92 F8 0B 5C */	stw r23, 0xb5c(r24)
/* 80B5823C  38 00 00 0F */	li r0, 0xf
/* 80B58240  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 80B58244  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B58248  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_80B5824C:
/* 80B5824C  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80B58250  2C 00 00 06 */	cmpwi r0, 6
/* 80B58254  41 82 00 24 */	beq lbl_80B58278
/* 80B58258  82 F8 0B 80 */	lwz r23, 0xb80(r24)
/* 80B5825C  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80B58260  4B 5E D6 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58264  92 F8 0B 80 */	stw r23, 0xb80(r24)
/* 80B58268  38 00 00 06 */	li r0, 6
/* 80B5826C  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 80B58270  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B58274  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_80B58278:
/* 80B58278  93 78 0D C4 */	stw r27, 0xdc4(r24)
/* 80B5827C  48 00 00 F0 */	b lbl_80B5836C
lbl_80B58280:
/* 80B58280  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 80B58284  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B58288  41 82 00 24 */	beq lbl_80B582AC
/* 80B5828C  82 F8 0B 5C */	lwz r23, 0xb5c(r24)
/* 80B58290  38 78 0B 50 */	addi r3, r24, 0xb50
/* 80B58294  4B 5E D6 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58298  92 F8 0B 5C */	stw r23, 0xb5c(r24)
/* 80B5829C  38 00 00 0F */	li r0, 0xf
/* 80B582A0  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 80B582A4  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B582A8  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_80B582AC:
/* 80B582AC  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80B582B0  2C 00 00 08 */	cmpwi r0, 8
/* 80B582B4  41 82 00 B8 */	beq lbl_80B5836C
/* 80B582B8  82 F8 0B 80 */	lwz r23, 0xb80(r24)
/* 80B582BC  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80B582C0  4B 5E D5 D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B582C4  92 F8 0B 80 */	stw r23, 0xb80(r24)
/* 80B582C8  38 00 00 08 */	li r0, 8
/* 80B582CC  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 80B582D0  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B582D4  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
/* 80B582D8  48 00 00 94 */	b lbl_80B5836C
lbl_80B582DC:
/* 80B582DC  7F 03 C3 78 */	mr r3, r24
/* 80B582E0  80 98 0A 7C */	lwz r4, 0xa7c(r24)
/* 80B582E4  38 A0 00 00 */	li r5, 0
/* 80B582E8  4B 5F 39 08 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B582EC  48 00 00 80 */	b lbl_80B5836C
lbl_80B582F0:
/* 80B582F0  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 80B582F4  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B582F8  41 82 00 24 */	beq lbl_80B5831C
/* 80B582FC  82 F8 0B 5C */	lwz r23, 0xb5c(r24)
/* 80B58300  38 78 0B 50 */	addi r3, r24, 0xb50
/* 80B58304  4B 5E D5 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58308  92 F8 0B 5C */	stw r23, 0xb5c(r24)
/* 80B5830C  38 00 00 0F */	li r0, 0xf
/* 80B58310  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 80B58314  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B58318  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_80B5831C:
/* 80B5831C  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80B58320  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80B58324  41 82 00 24 */	beq lbl_80B58348
/* 80B58328  82 F8 0B 80 */	lwz r23, 0xb80(r24)
/* 80B5832C  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80B58330  4B 5E D5 68 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58334  92 F8 0B 80 */	stw r23, 0xb80(r24)
/* 80B58338  38 00 00 1F */	li r0, 0x1f
/* 80B5833C  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 80B58340  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B58344  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_80B58348:
/* 80B58348  93 78 0D C4 */	stw r27, 0xdc4(r24)
/* 80B5834C  7F 03 C3 78 */	mr r3, r24
/* 80B58350  A8 98 04 B6 */	lha r4, 0x4b6(r24)
/* 80B58354  4B 5F 26 C4 */	b setAngle__8daNpcT_cFs
/* 80B58358  48 00 00 14 */	b lbl_80B5836C
lbl_80B5835C:
/* 80B5835C  7F 03 C3 78 */	mr r3, r24
/* 80B58360  80 98 0A 7C */	lwz r4, 0xa7c(r24)
/* 80B58364  38 A0 00 00 */	li r5, 0
/* 80B58368  4B 5F 38 88 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B5836C:
/* 80B5836C  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 80B58370  80 1F 02 2C */	lwz r0, 0x22c(r31)
/* 80B58374  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B58378  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5837C  28 1C 00 08 */	cmplwi r28, 8
/* 80B58380  41 81 04 C4 */	bgt lbl_80B58844
/* 80B58384  3C 60 80 B6 */	lis r3, lit_6858@ha
/* 80B58388  38 63 EB 04 */	addi r3, r3, lit_6858@l
/* 80B5838C  57 80 10 3A */	slwi r0, r28, 2
/* 80B58390  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B58394  7C 09 03 A6 */	mtctr r0
/* 80B58398  4E 80 04 20 */	bctr 
lbl_80B5839C:
/* 80B5839C  93 41 00 10 */	stw r26, 0x10(r1)
/* 80B583A0  7F 03 C3 78 */	mr r3, r24
/* 80B583A4  38 81 00 10 */	addi r4, r1, 0x10
/* 80B583A8  38 A0 00 00 */	li r5, 0
/* 80B583AC  38 C0 00 00 */	li r6, 0
/* 80B583B0  38 E0 00 00 */	li r7, 0
/* 80B583B4  4B 5F 38 C4 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B583B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B583BC  41 82 04 88 */	beq lbl_80B58844
/* 80B583C0  2C 1A 00 00 */	cmpwi r26, 0
/* 80B583C4  40 82 00 18 */	bne lbl_80B583DC
/* 80B583C8  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80B583CC  28 00 00 01 */	cmplwi r0, 1
/* 80B583D0  40 82 04 74 */	bne lbl_80B58844
/* 80B583D4  3B A0 00 01 */	li r29, 1
/* 80B583D8  48 00 04 6C */	b lbl_80B58844
lbl_80B583DC:
/* 80B583DC  3B A0 00 01 */	li r29, 1
/* 80B583E0  48 00 04 64 */	b lbl_80B58844
lbl_80B583E4:
/* 80B583E4  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B583E8  2C 00 00 01 */	cmpwi r0, 1
/* 80B583EC  41 82 00 28 */	beq lbl_80B58414
/* 80B583F0  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B583F4  4B 5E D3 08 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B583F8  38 00 00 00 */	li r0, 0
/* 80B583FC  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B58400  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B58404  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B58408  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B5840C  38 00 00 01 */	li r0, 1
/* 80B58410  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80B58414:
/* 80B58414  38 00 00 00 */	li r0, 0
/* 80B58418  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B5841C  A8 98 0D C8 */	lha r4, 0xdc8(r24)
/* 80B58420  A8 18 0D 7A */	lha r0, 0xd7a(r24)
/* 80B58424  7C 04 00 00 */	cmpw r4, r0
/* 80B58428  41 82 00 20 */	beq lbl_80B58448
/* 80B5842C  7F 03 C3 78 */	mr r3, r24
/* 80B58430  38 A0 FF FF */	li r5, -1
/* 80B58434  38 C0 FF FF */	li r6, -1
/* 80B58438  38 FF 00 00 */	addi r7, r31, 0
/* 80B5843C  A8 E7 00 8C */	lha r7, 0x8c(r7)
/* 80B58440  39 00 00 00 */	li r8, 0
/* 80B58444  4B 5F 32 04 */	b step__8daNpcT_cFsiiii
lbl_80B58448:
/* 80B58448  A8 18 0D C8 */	lha r0, 0xdc8(r24)
/* 80B5844C  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 80B58450  7F 03 C3 78 */	mr r3, r24
/* 80B58454  38 80 00 00 */	li r4, 0
/* 80B58458  38 A0 00 00 */	li r5, 0
/* 80B5845C  38 C0 00 00 */	li r6, 0
/* 80B58460  38 E0 00 00 */	li r7, 0
/* 80B58464  4B 5F 38 14 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B58468  2C 03 00 00 */	cmpwi r3, 0
/* 80B5846C  41 82 03 D8 */	beq lbl_80B58844
/* 80B58470  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80B58474  28 00 00 01 */	cmplwi r0, 1
/* 80B58478  40 82 03 CC */	bne lbl_80B58844
/* 80B5847C  A8 78 0D C8 */	lha r3, 0xdc8(r24)
/* 80B58480  A8 18 0D 7A */	lha r0, 0xd7a(r24)
/* 80B58484  7C 03 00 00 */	cmpw r3, r0
/* 80B58488  40 82 03 BC */	bne lbl_80B58844
/* 80B5848C  3B A0 00 01 */	li r29, 1
/* 80B58490  48 00 03 B4 */	b lbl_80B58844
lbl_80B58494:
/* 80B58494  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B58498  2C 00 00 01 */	cmpwi r0, 1
/* 80B5849C  41 82 00 28 */	beq lbl_80B584C4
/* 80B584A0  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B584A4  4B 5E D2 58 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B584A8  38 00 00 00 */	li r0, 0
/* 80B584AC  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B584B0  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B584B4  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B584B8  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B584BC  38 00 00 01 */	li r0, 1
/* 80B584C0  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80B584C4:
/* 80B584C4  38 00 00 00 */	li r0, 0
/* 80B584C8  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B584CC  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80B584D0  2C 00 00 06 */	cmpwi r0, 6
/* 80B584D4  40 82 03 70 */	bne lbl_80B58844
/* 80B584D8  80 18 0D C4 */	lwz r0, 0xdc4(r24)
/* 80B584DC  2C 00 00 00 */	cmpwi r0, 0
/* 80B584E0  40 82 00 18 */	bne lbl_80B584F8
/* 80B584E4  7F C3 F3 78 */	mr r3, r30
/* 80B584E8  7F 24 CB 78 */	mr r4, r25
/* 80B584EC  4B 4E F8 60 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B584F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B584F4  41 82 00 F0 */	beq lbl_80B585E4
lbl_80B584F8:
/* 80B584F8  38 78 0D C4 */	addi r3, r24, 0xdc4
/* 80B584FC  48 00 4E 7D */	bl func_80B5D378
/* 80B58500  2C 03 00 00 */	cmpwi r3, 0
/* 80B58504  40 82 00 E0 */	bne lbl_80B585E4
/* 80B58508  38 78 14 98 */	addi r3, r24, 0x1498
/* 80B5850C  4B 5E D1 FC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B58510  28 03 00 00 */	cmplwi r3, 0
/* 80B58514  41 82 00 D0 */	beq lbl_80B585E4
/* 80B58518  38 00 00 01 */	li r0, 1
/* 80B5851C  98 03 0A 40 */	stb r0, 0xa40(r3)
/* 80B58520  38 00 00 00 */	li r0, 0
/* 80B58524  98 03 0A 44 */	stb r0, 0xa44(r3)
/* 80B58528  A8 98 04 E6 */	lha r4, 0x4e6(r24)
/* 80B5852C  3C 84 00 01 */	addis r4, r4, 1
/* 80B58530  38 04 80 00 */	addi r0, r4, -32768
/* 80B58534  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 80B58538  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B5853C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B58540  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B58544  34 A4 05 50 */	addic. r5, r4, 0x550
/* 80B58548  38 9F 00 00 */	addi r4, r31, 0
/* 80B5854C  C0 44 00 9C */	lfs f2, 0x9c(r4)
/* 80B58550  C0 24 00 98 */	lfs f1, 0x98(r4)
/* 80B58554  41 82 00 34 */	beq lbl_80B58588
/* 80B58558  C0 05 00 00 */	lfs f0, 0(r5)
/* 80B5855C  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80B58560  C0 05 00 04 */	lfs f0, 4(r5)
/* 80B58564  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80B58568  C0 05 00 08 */	lfs f0, 8(r5)
/* 80B5856C  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80B58570  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B58574  D0 03 04 BC */	stfs f0, 0x4bc(r3)
/* 80B58578  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B5857C  D0 03 04 C0 */	stfs f0, 0x4c0(r3)
/* 80B58580  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B58584  D0 03 04 C4 */	stfs f0, 0x4c4(r3)
lbl_80B58588:
/* 80B58588  C0 1F 02 1C */	lfs f0, 0x21c(r31)
/* 80B5858C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B58590  FC 00 00 1E */	fctiwz f0, f0
/* 80B58594  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B58598  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B5859C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B585A0  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 80B585A4  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80B585A8  D0 03 05 00 */	stfs f0, 0x500(r3)
/* 80B585AC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B585B0  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 80B585B4  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 80B585B8  7C 04 04 2E */	lfsx f0, r4, r0
/* 80B585BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B585C0  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80B585C4  7C 84 02 14 */	add r4, r4, r0
/* 80B585C8  C0 04 00 04 */	lfs f0, 4(r4)
/* 80B585CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B585D0  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80B585D4  38 00 40 00 */	li r0, 0x4000
/* 80B585D8  B0 03 0A 14 */	sth r0, 0xa14(r3)
/* 80B585DC  38 00 00 01 */	li r0, 1
/* 80B585E0  98 03 0A 43 */	stb r0, 0xa43(r3)
lbl_80B585E4:
/* 80B585E4  80 18 0B 84 */	lwz r0, 0xb84(r24)
/* 80B585E8  2C 00 00 00 */	cmpwi r0, 0
/* 80B585EC  40 82 00 B8 */	bne lbl_80B586A4
/* 80B585F0  80 78 05 78 */	lwz r3, 0x578(r24)
/* 80B585F4  38 63 00 0C */	addi r3, r3, 0xc
/* 80B585F8  38 9F 00 00 */	addi r4, r31, 0
/* 80B585FC  C0 24 00 A0 */	lfs f1, 0xa0(r4)
/* 80B58600  4B 7C FE 2C */	b checkPass__12J3DFrameCtrlFf
/* 80B58604  2C 03 00 00 */	cmpwi r3, 0
/* 80B58608  41 82 02 3C */	beq lbl_80B58844
/* 80B5860C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500F1@ha */
/* 80B58610  38 03 00 F1 */	addi r0, r3, 0x00F1 /* 0x000500F1@l */
/* 80B58614  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B58618  38 78 05 80 */	addi r3, r24, 0x580
/* 80B5861C  38 81 00 0C */	addi r4, r1, 0xc
/* 80B58620  38 A0 FF FF */	li r5, -1
/* 80B58624  81 98 05 80 */	lwz r12, 0x580(r24)
/* 80B58628  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B5862C  7D 89 03 A6 */	mtctr r12
/* 80B58630  4E 80 04 21 */	bctrl 
/* 80B58634  38 7F 00 00 */	addi r3, r31, 0
/* 80B58638  C0 43 00 A4 */	lfs f2, 0xa4(r3)
/* 80B5863C  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80B58640  C0 03 00 A8 */	lfs f0, 0xa8(r3)
/* 80B58644  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B58648  FC 00 00 1E */	fctiwz f0, f0
/* 80B5864C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B58650  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B58654  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B58658  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B5865C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B58660  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B58664  A8 98 04 E6 */	lha r4, 0x4e6(r24)
/* 80B58668  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 80B5866C  38 C5 9A 20 */	addi r6, r5, sincosTable___5JMath@l
/* 80B58670  7C A6 02 14 */	add r5, r6, r0
/* 80B58674  C0 05 00 04 */	lfs f0, 4(r5)
/* 80B58678  EC 22 00 32 */	fmuls f1, f2, f0
/* 80B5867C  7C 06 04 2E */	lfsx f0, r6, r0
/* 80B58680  EC 42 00 32 */	fmuls f2, f2, f0
/* 80B58684  38 A0 00 00 */	li r5, 0
/* 80B58688  38 C0 00 01 */	li r6, 1
/* 80B5868C  38 E0 00 00 */	li r7, 0
/* 80B58690  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B58694  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80B58698  7D 89 03 A6 */	mtctr r12
/* 80B5869C  4E 80 04 21 */	bctrl 
/* 80B586A0  48 00 01 A4 */	b lbl_80B58844
lbl_80B586A4:
/* 80B586A4  3B A0 00 01 */	li r29, 1
/* 80B586A8  48 00 01 9C */	b lbl_80B58844
lbl_80B586AC:
/* 80B586AC  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80B586B0  2C 00 00 08 */	cmpwi r0, 8
/* 80B586B4  40 82 01 90 */	bne lbl_80B58844
/* 80B586B8  80 18 0B 84 */	lwz r0, 0xb84(r24)
/* 80B586BC  2C 00 00 00 */	cmpwi r0, 0
/* 80B586C0  40 82 00 40 */	bne lbl_80B58700
/* 80B586C4  80 78 05 78 */	lwz r3, 0x578(r24)
/* 80B586C8  38 63 00 0C */	addi r3, r3, 0xc
/* 80B586CC  C0 3F 02 20 */	lfs f1, 0x220(r31)
/* 80B586D0  4B 7C FD 5C */	b checkPass__12J3DFrameCtrlFf
/* 80B586D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B586D8  41 82 01 6C */	beq lbl_80B58844
/* 80B586DC  38 00 00 01 */	li r0, 1
/* 80B586E0  98 18 15 78 */	stb r0, 0x1578(r24)
/* 80B586E4  38 78 14 98 */	addi r3, r24, 0x1498
/* 80B586E8  4B 5E D0 20 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B586EC  28 03 00 00 */	cmplwi r3, 0
/* 80B586F0  41 82 01 54 */	beq lbl_80B58844
/* 80B586F4  38 00 00 01 */	li r0, 1
/* 80B586F8  98 03 0A 44 */	stb r0, 0xa44(r3)
/* 80B586FC  48 00 01 48 */	b lbl_80B58844
lbl_80B58700:
/* 80B58700  3B A0 00 01 */	li r29, 1
/* 80B58704  48 00 01 40 */	b lbl_80B58844
lbl_80B58708:
/* 80B58708  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80B5870C  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80B58710  40 82 01 34 */	bne lbl_80B58844
/* 80B58714  80 18 0B 84 */	lwz r0, 0xb84(r24)
/* 80B58718  2C 00 00 00 */	cmpwi r0, 0
/* 80B5871C  40 82 00 74 */	bne lbl_80B58790
/* 80B58720  80 78 05 78 */	lwz r3, 0x578(r24)
/* 80B58724  38 63 00 0C */	addi r3, r3, 0xc
/* 80B58728  C0 3F 02 24 */	lfs f1, 0x224(r31)
/* 80B5872C  4B 7C FD 00 */	b checkPass__12J3DFrameCtrlFf
/* 80B58730  2C 03 00 00 */	cmpwi r3, 0
/* 80B58734  41 82 01 10 */	beq lbl_80B58844
/* 80B58738  88 18 15 78 */	lbz r0, 0x1578(r24)
/* 80B5873C  28 00 00 00 */	cmplwi r0, 0
/* 80B58740  41 82 00 44 */	beq lbl_80B58784
/* 80B58744  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 80B58748  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80B5874C  90 01 00 08 */	stw r0, 8(r1)
/* 80B58750  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B58754  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B58758  80 63 00 00 */	lwz r3, 0(r3)
/* 80B5875C  38 81 00 08 */	addi r4, r1, 8
/* 80B58760  38 A0 00 00 */	li r5, 0
/* 80B58764  38 C0 00 00 */	li r6, 0
/* 80B58768  38 E0 00 00 */	li r7, 0
/* 80B5876C  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80B58770  FC 40 08 90 */	fmr f2, f1
/* 80B58774  C0 7F 01 3C */	lfs f3, 0x13c(r31)
/* 80B58778  FC 80 18 90 */	fmr f4, f3
/* 80B5877C  39 00 00 00 */	li r8, 0
/* 80B58780  4B 75 32 04 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80B58784:
/* 80B58784  38 00 00 00 */	li r0, 0
/* 80B58788  98 18 15 78 */	stb r0, 0x1578(r24)
/* 80B5878C  48 00 00 B8 */	b lbl_80B58844
lbl_80B58790:
/* 80B58790  38 78 0D C4 */	addi r3, r24, 0xdc4
/* 80B58794  48 00 4B E5 */	bl func_80B5D378
/* 80B58798  2C 03 00 00 */	cmpwi r3, 0
/* 80B5879C  40 82 00 A8 */	bne lbl_80B58844
/* 80B587A0  3B A0 00 01 */	li r29, 1
/* 80B587A4  48 00 00 A0 */	b lbl_80B58844
lbl_80B587A8:
/* 80B587A8  7F 03 C3 78 */	mr r3, r24
/* 80B587AC  38 80 00 00 */	li r4, 0
/* 80B587B0  38 A0 00 00 */	li r5, 0
/* 80B587B4  38 C0 00 00 */	li r6, 0
/* 80B587B8  38 E0 00 00 */	li r7, 0
/* 80B587BC  4B 5F 34 BC */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B587C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B587C4  41 82 00 80 */	beq lbl_80B58844
/* 80B587C8  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80B587CC  28 00 00 01 */	cmplwi r0, 1
/* 80B587D0  40 82 00 74 */	bne lbl_80B58844
/* 80B587D4  3B A0 00 01 */	li r29, 1
/* 80B587D8  48 00 00 6C */	b lbl_80B58844
lbl_80B587DC:
/* 80B587DC  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B587E0  2C 00 00 01 */	cmpwi r0, 1
/* 80B587E4  41 82 00 28 */	beq lbl_80B5880C
/* 80B587E8  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B587EC  4B 5E CF 10 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B587F0  38 00 00 00 */	li r0, 0
/* 80B587F4  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B587F8  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B587FC  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B58800  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B58804  38 00 00 01 */	li r0, 1
/* 80B58808  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80B5880C:
/* 80B5880C  38 00 00 00 */	li r0, 0
/* 80B58810  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B58814  7F 03 C3 78 */	mr r3, r24
/* 80B58818  38 80 00 00 */	li r4, 0
/* 80B5881C  38 A0 00 00 */	li r5, 0
/* 80B58820  38 C0 00 00 */	li r6, 0
/* 80B58824  38 E0 00 00 */	li r7, 0
/* 80B58828  4B 5F 34 50 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B5882C  2C 03 00 00 */	cmpwi r3, 0
/* 80B58830  41 82 00 14 */	beq lbl_80B58844
/* 80B58834  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80B58838  28 00 00 01 */	cmplwi r0, 1
/* 80B5883C  40 82 00 08 */	bne lbl_80B58844
/* 80B58840  3B A0 00 01 */	li r29, 1
lbl_80B58844:
/* 80B58844  38 00 00 01 */	li r0, 1
/* 80B58848  98 18 15 80 */	stb r0, 0x1580(r24)
/* 80B5884C  2C 1C 00 08 */	cmpwi r28, 8
/* 80B58850  40 82 00 0C */	bne lbl_80B5885C
/* 80B58854  38 00 00 00 */	li r0, 0
/* 80B58858  98 18 15 80 */	stb r0, 0x1580(r24)
lbl_80B5885C:
/* 80B5885C  2C 1C 00 05 */	cmpwi r28, 5
/* 80B58860  41 82 00 0C */	beq lbl_80B5886C
/* 80B58864  2C 1C 00 06 */	cmpwi r28, 6
/* 80B58868  40 82 01 34 */	bne lbl_80B5899C
lbl_80B5886C:
/* 80B5886C  88 18 15 78 */	lbz r0, 0x1578(r24)
/* 80B58870  28 00 00 00 */	cmplwi r0, 0
/* 80B58874  41 82 00 C0 */	beq lbl_80B58934
/* 80B58878  38 00 00 01 */	li r0, 1
/* 80B5887C  98 18 15 75 */	stb r0, 0x1575(r24)
/* 80B58880  80 78 05 78 */	lwz r3, 0x578(r24)
/* 80B58884  80 63 00 04 */	lwz r3, 4(r3)
/* 80B58888  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B5888C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B58890  38 63 03 C0 */	addi r3, r3, 0x3c0
/* 80B58894  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B58898  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B5889C  4B 7E DC 14 */	b PSMTXCopy
/* 80B588A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B588A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B588A8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B588AC  D0 18 0D 6C */	stfs f0, 0xd6c(r24)
/* 80B588B0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B588B4  D0 18 0D 70 */	stfs f0, 0xd70(r24)
/* 80B588B8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B588BC  D0 18 0D 74 */	stfs f0, 0xd74(r24)
/* 80B588C0  80 78 0B C8 */	lwz r3, 0xbc8(r24)
/* 80B588C4  38 18 0D 6C */	addi r0, r24, 0xd6c
/* 80B588C8  7C 63 00 50 */	subf r3, r3, r0
/* 80B588CC  30 03 FF FF */	addic r0, r3, -1
/* 80B588D0  7C 00 19 10 */	subfe r0, r0, r3
/* 80B588D4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B588D8  40 82 00 10 */	bne lbl_80B588E8
/* 80B588DC  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B588E0  2C 00 00 03 */	cmpwi r0, 3
/* 80B588E4  41 82 00 30 */	beq lbl_80B58914
lbl_80B588E8:
/* 80B588E8  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B588EC  4B 5E CE 10 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B588F0  38 00 00 00 */	li r0, 0
/* 80B588F4  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B588F8  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B588FC  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B58900  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B58904  38 00 00 03 */	li r0, 3
/* 80B58908  90 18 0C E0 */	stw r0, 0xce0(r24)
/* 80B5890C  38 00 00 01 */	li r0, 1
/* 80B58910  48 00 00 08 */	b lbl_80B58918
lbl_80B58914:
/* 80B58914  38 00 00 00 */	li r0, 0
lbl_80B58918:
/* 80B58918  2C 00 00 00 */	cmpwi r0, 0
/* 80B5891C  41 82 00 0C */	beq lbl_80B58928
/* 80B58920  38 18 0D 6C */	addi r0, r24, 0xd6c
/* 80B58924  90 18 0B C8 */	stw r0, 0xbc8(r24)
lbl_80B58928:
/* 80B58928  38 00 00 00 */	li r0, 0
/* 80B5892C  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B58930  48 00 00 EC */	b lbl_80B58A1C
lbl_80B58934:
/* 80B58934  38 78 14 98 */	addi r3, r24, 0x1498
/* 80B58938  4B 5E CD D0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B5893C  28 03 00 00 */	cmplwi r3, 0
/* 80B58940  40 82 00 40 */	bne lbl_80B58980
/* 80B58944  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B58948  2C 00 00 00 */	cmpwi r0, 0
/* 80B5894C  41 82 00 24 */	beq lbl_80B58970
/* 80B58950  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B58954  4B 5E CD A8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B58958  38 00 00 00 */	li r0, 0
/* 80B5895C  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B58960  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B58964  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B58968  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B5896C  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80B58970:
/* 80B58970  38 00 00 00 */	li r0, 0
/* 80B58974  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B58978  7F A3 EB 78 */	mr r3, r29
/* 80B5897C  48 00 00 A4 */	b lbl_80B58A20
lbl_80B58980:
/* 80B58980  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B58984  D0 18 0D 6C */	stfs f0, 0xd6c(r24)
/* 80B58988  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B5898C  D0 18 0D 70 */	stfs f0, 0xd70(r24)
/* 80B58990  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B58994  D0 18 0D 74 */	stfs f0, 0xd74(r24)
/* 80B58998  48 00 00 84 */	b lbl_80B58A1C
lbl_80B5899C:
/* 80B5899C  2C 1C 00 07 */	cmpwi r28, 7
/* 80B589A0  40 82 00 7C */	bne lbl_80B58A1C
/* 80B589A4  80 78 0B C8 */	lwz r3, 0xbc8(r24)
/* 80B589A8  38 18 15 08 */	addi r0, r24, 0x1508
/* 80B589AC  7C 63 00 50 */	subf r3, r3, r0
/* 80B589B0  30 03 FF FF */	addic r0, r3, -1
/* 80B589B4  7C 00 19 10 */	subfe r0, r0, r3
/* 80B589B8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B589BC  40 82 00 10 */	bne lbl_80B589CC
/* 80B589C0  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B589C4  2C 00 00 03 */	cmpwi r0, 3
/* 80B589C8  41 82 00 30 */	beq lbl_80B589F8
lbl_80B589CC:
/* 80B589CC  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B589D0  4B 5E CD 2C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B589D4  38 00 00 00 */	li r0, 0
/* 80B589D8  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B589DC  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B589E0  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B589E4  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B589E8  38 00 00 03 */	li r0, 3
/* 80B589EC  90 18 0C E0 */	stw r0, 0xce0(r24)
/* 80B589F0  38 00 00 01 */	li r0, 1
/* 80B589F4  48 00 00 08 */	b lbl_80B589FC
lbl_80B589F8:
/* 80B589F8  38 00 00 00 */	li r0, 0
lbl_80B589FC:
/* 80B589FC  2C 00 00 00 */	cmpwi r0, 0
/* 80B58A00  41 82 00 0C */	beq lbl_80B58A0C
/* 80B58A04  38 18 15 08 */	addi r0, r24, 0x1508
/* 80B58A08  90 18 0B C8 */	stw r0, 0xbc8(r24)
lbl_80B58A0C:
/* 80B58A0C  38 00 00 00 */	li r0, 0
/* 80B58A10  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B58A14  38 00 00 01 */	li r0, 1
/* 80B58A18  98 18 15 75 */	stb r0, 0x1575(r24)
lbl_80B58A1C:
/* 80B58A1C  7F A3 EB 78 */	mr r3, r29
lbl_80B58A20:
/* 80B58A20  39 61 00 50 */	addi r11, r1, 0x50
/* 80B58A24  4B 80 97 EC */	b _restgpr_23
/* 80B58A28  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B58A2C  7C 08 03 A6 */	mtlr r0
/* 80B58A30  38 21 00 50 */	addi r1, r1, 0x50
/* 80B58A34  4E 80 00 20 */	blr 
