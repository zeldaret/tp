lbl_80D48750:
/* 80D48750  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D48754  7C 08 02 A6 */	mflr r0
/* 80D48758  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4875C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D48760  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D48764  7C 7F 1B 78 */	mr r31, r3
/* 80D48768  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80D4876C  2C 00 00 02 */	cmpwi r0, 2
/* 80D48770  41 82 00 80 */	beq lbl_80D487F0
/* 80D48774  40 80 02 EC */	bge lbl_80D48A60
/* 80D48778  2C 00 FF FF */	cmpwi r0, -1
/* 80D4877C  41 82 02 E4 */	beq lbl_80D48A60
/* 80D48780  40 80 00 08 */	bge lbl_80D48788
/* 80D48784  48 00 02 DC */	b lbl_80D48A60
lbl_80D48788:
/* 80D48788  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80D4878C  2C 00 00 00 */	cmpwi r0, 0
/* 80D48790  40 82 00 60 */	bne lbl_80D487F0
/* 80D48794  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80D48798  38 A0 00 00 */	li r5, 0
/* 80D4879C  4B 40 34 54 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80D487A0  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 80D487A4  2C 00 00 01 */	cmpwi r0, 1
/* 80D487A8  40 82 00 0C */	bne lbl_80D487B4
/* 80D487AC  38 00 00 00 */	li r0, 0
/* 80D487B0  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
lbl_80D487B4:
/* 80D487B4  38 00 00 00 */	li r0, 0
/* 80D487B8  98 1F 11 29 */	stb r0, 0x1129(r31)
/* 80D487BC  88 1F 11 28 */	lbz r0, 0x1128(r31)
/* 80D487C0  28 00 00 02 */	cmplwi r0, 2
/* 80D487C4  41 82 00 1C */	beq lbl_80D487E0
/* 80D487C8  48 00 38 6D */	bl checkNowWolf__9daPy_py_cFv
/* 80D487CC  28 03 00 00 */	cmplwi r3, 0
/* 80D487D0  41 82 00 10 */	beq lbl_80D487E0
/* 80D487D4  38 00 00 01 */	li r0, 1
/* 80D487D8  98 1F 11 29 */	stb r0, 0x1129(r31)
/* 80D487DC  48 00 00 0C */	b lbl_80D487E8
lbl_80D487E0:
/* 80D487E0  38 00 00 2E */	li r0, 0x2e
/* 80D487E4  B0 1F 0E 68 */	sth r0, 0xe68(r31)
lbl_80D487E8:
/* 80D487E8  38 00 00 02 */	li r0, 2
/* 80D487EC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80D487F0:
/* 80D487F0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80D487F4  2C 00 00 00 */	cmpwi r0, 0
/* 80D487F8  40 82 02 68 */	bne lbl_80D48A60
/* 80D487FC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80D48800  28 00 00 00 */	cmplwi r0, 0
/* 80D48804  40 82 00 28 */	bne lbl_80D4882C
/* 80D48808  7F E3 FB 78 */	mr r3, r31
/* 80D4880C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D48810  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80D48814  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80D48818  4B 2D 1E F8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D4881C  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80D48820  7C 60 07 34 */	extsh r0, r3
/* 80D48824  7C 04 00 00 */	cmpw r4, r0
/* 80D48828  40 82 01 D4 */	bne lbl_80D489FC
lbl_80D4882C:
/* 80D4882C  88 1F 11 29 */	lbz r0, 0x1129(r31)
/* 80D48830  28 00 00 00 */	cmplwi r0, 0
/* 80D48834  41 82 00 7C */	beq lbl_80D488B0
/* 80D48838  7F E3 FB 78 */	mr r3, r31
/* 80D4883C  38 80 00 00 */	li r4, 0
/* 80D48840  38 A0 00 00 */	li r5, 0
/* 80D48844  38 C0 00 00 */	li r6, 0
/* 80D48848  38 E0 00 00 */	li r7, 0
/* 80D4884C  4B 40 34 2C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80D48850  2C 03 00 00 */	cmpwi r3, 0
/* 80D48854  41 82 01 20 */	beq lbl_80D48974
/* 80D48858  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80D4885C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D48860  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D48864  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80D48868  4B 3F CE 78 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80D4886C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D48870  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D48874  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80D48878  4B 2F 9B F0 */	b reset__14dEvt_control_cFv
/* 80D4887C  3C 60 80 D5 */	lis r3, lit_4938@ha
/* 80D48880  38 83 C5 50 */	addi r4, r3, lit_4938@l
/* 80D48884  80 64 00 00 */	lwz r3, 0(r4)
/* 80D48888  80 04 00 04 */	lwz r0, 4(r4)
/* 80D4888C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80D48890  90 01 00 18 */	stw r0, 0x18(r1)
/* 80D48894  80 04 00 08 */	lwz r0, 8(r4)
/* 80D48898  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D4889C  7F E3 FB 78 */	mr r3, r31
/* 80D488A0  38 81 00 14 */	addi r4, r1, 0x14
/* 80D488A4  38 A0 00 00 */	li r5, 0
/* 80D488A8  4B FF FA BD */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D488AC  48 00 00 C8 */	b lbl_80D48974
lbl_80D488B0:
/* 80D488B0  A8 7F 0E 68 */	lha r3, 0xe68(r31)
/* 80D488B4  38 03 FF FF */	addi r0, r3, -1
/* 80D488B8  B0 1F 0E 68 */	sth r0, 0xe68(r31)
/* 80D488BC  A8 7F 0E 68 */	lha r3, 0xe68(r31)
/* 80D488C0  7C 60 07 35 */	extsh. r0, r3
/* 80D488C4  41 81 00 48 */	bgt lbl_80D4890C
/* 80D488C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D488CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D488D0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80D488D4  4B 2F 9B 94 */	b reset__14dEvt_control_cFv
/* 80D488D8  3C 60 80 D5 */	lis r3, lit_4943@ha
/* 80D488DC  38 83 C5 5C */	addi r4, r3, lit_4943@l
/* 80D488E0  80 64 00 00 */	lwz r3, 0(r4)
/* 80D488E4  80 04 00 04 */	lwz r0, 4(r4)
/* 80D488E8  90 61 00 08 */	stw r3, 8(r1)
/* 80D488EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D488F0  80 04 00 08 */	lwz r0, 8(r4)
/* 80D488F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D488F8  7F E3 FB 78 */	mr r3, r31
/* 80D488FC  38 81 00 08 */	addi r4, r1, 8
/* 80D48900  38 A0 00 00 */	li r5, 0
/* 80D48904  4B FF FA 61 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D48908  48 00 00 6C */	b lbl_80D48974
lbl_80D4890C:
/* 80D4890C  2C 03 00 2D */	cmpwi r3, 0x2d
/* 80D48910  40 82 00 64 */	bne lbl_80D48974
/* 80D48914  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80D48918  2C 00 00 03 */	cmpwi r0, 3
/* 80D4891C  41 82 00 28 */	beq lbl_80D48944
/* 80D48920  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80D48924  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80D48928  4B 3F CF 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4892C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80D48930  38 00 00 03 */	li r0, 3
/* 80D48934  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80D48938  3C 60 80 D5 */	lis r3, lit_4548@ha
/* 80D4893C  C0 03 C1 28 */	lfs f0, lit_4548@l(r3)
/* 80D48940  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80D48944:
/* 80D48944  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80D48948  2C 00 00 01 */	cmpwi r0, 1
/* 80D4894C  41 82 00 28 */	beq lbl_80D48974
/* 80D48950  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80D48954  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80D48958  4B 3F CF 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4895C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80D48960  38 00 00 01 */	li r0, 1
/* 80D48964  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80D48968  3C 60 80 D5 */	lis r3, lit_4548@ha
/* 80D4896C  C0 03 C1 28 */	lfs f0, lit_4548@l(r3)
/* 80D48970  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80D48974:
/* 80D48974  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80D48978  28 00 00 00 */	cmplwi r0, 0
/* 80D4897C  41 82 00 40 */	beq lbl_80D489BC
/* 80D48980  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80D48984  2C 00 00 00 */	cmpwi r0, 0
/* 80D48988  41 82 00 28 */	beq lbl_80D489B0
/* 80D4898C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80D48990  4B 3F CD 6C */	b remove__18daNpcT_ActorMngr_cFv
/* 80D48994  38 00 00 00 */	li r0, 0
/* 80D48998  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80D4899C  3C 60 80 D5 */	lis r3, lit_4199@ha
/* 80D489A0  C0 03 C1 08 */	lfs f0, lit_4199@l(r3)
/* 80D489A4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80D489A8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80D489AC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80D489B0:
/* 80D489B0  38 00 00 00 */	li r0, 0
/* 80D489B4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80D489B8  48 00 00 A8 */	b lbl_80D48A60
lbl_80D489BC:
/* 80D489BC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80D489C0  2C 00 00 01 */	cmpwi r0, 1
/* 80D489C4  41 82 00 2C */	beq lbl_80D489F0
/* 80D489C8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80D489CC  4B 3F CD 30 */	b remove__18daNpcT_ActorMngr_cFv
/* 80D489D0  38 00 00 00 */	li r0, 0
/* 80D489D4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80D489D8  3C 60 80 D5 */	lis r3, lit_4199@ha
/* 80D489DC  C0 03 C1 08 */	lfs f0, lit_4199@l(r3)
/* 80D489E0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80D489E4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80D489E8  38 00 00 01 */	li r0, 1
/* 80D489EC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80D489F0:
/* 80D489F0  38 00 00 00 */	li r0, 0
/* 80D489F4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80D489F8  48 00 00 68 */	b lbl_80D48A60
lbl_80D489FC:
/* 80D489FC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80D48A00  2C 00 00 01 */	cmpwi r0, 1
/* 80D48A04  41 82 00 2C */	beq lbl_80D48A30
/* 80D48A08  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80D48A0C  4B 3F CC F0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80D48A10  38 00 00 00 */	li r0, 0
/* 80D48A14  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80D48A18  3C 60 80 D5 */	lis r3, lit_4199@ha
/* 80D48A1C  C0 03 C1 08 */	lfs f0, lit_4199@l(r3)
/* 80D48A20  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80D48A24  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80D48A28  38 00 00 01 */	li r0, 1
/* 80D48A2C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80D48A30:
/* 80D48A30  38 00 00 00 */	li r0, 0
/* 80D48A34  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80D48A38  7F E3 FB 78 */	mr r3, r31
/* 80D48A3C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80D48A40  4B 2D 1C D0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D48A44  7C 64 1B 78 */	mr r4, r3
/* 80D48A48  7F E3 FB 78 */	mr r3, r31
/* 80D48A4C  38 A0 FF FF */	li r5, -1
/* 80D48A50  38 C0 FF FF */	li r6, -1
/* 80D48A54  38 E0 00 0F */	li r7, 0xf
/* 80D48A58  39 00 00 00 */	li r8, 0
/* 80D48A5C  4B 40 2B EC */	b step__8daNpcT_cFsiiii
lbl_80D48A60:
/* 80D48A60  38 60 00 00 */	li r3, 0
/* 80D48A64  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D48A68  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D48A6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D48A70  7C 08 03 A6 */	mtlr r0
/* 80D48A74  38 21 00 30 */	addi r1, r1, 0x30
/* 80D48A78  4E 80 00 20 */	blr 
