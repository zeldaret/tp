lbl_80955608:
/* 80955608  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8095560C  7C 08 02 A6 */	mflr r0
/* 80955610  90 01 00 34 */	stw r0, 0x34(r1)
/* 80955614  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80955618  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8095561C  7C 7F 1B 78 */	mr r31, r3
/* 80955620  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80955624  2C 00 00 02 */	cmpwi r0, 2
/* 80955628  41 82 00 94 */	beq lbl_809556BC
/* 8095562C  40 80 05 00 */	bge lbl_80955B2C
/* 80955630  2C 00 00 00 */	cmpwi r0, 0
/* 80955634  40 80 00 0C */	bge lbl_80955640
/* 80955638  48 00 04 F4 */	b lbl_80955B2C
/* 8095563C  48 00 04 F0 */	b lbl_80955B2C
lbl_80955640:
/* 80955640  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80955644  2C 00 00 00 */	cmpwi r0, 0
/* 80955648  40 82 00 74 */	bne lbl_809556BC
/* 8095564C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80955650  2C 00 00 0C */	cmpwi r0, 0xc
/* 80955654  41 82 00 28 */	beq lbl_8095567C
/* 80955658  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 8095565C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80955660  4B 7F 02 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80955664  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80955668  38 00 00 0C */	li r0, 0xc
/* 8095566C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80955670  3C 60 80 95 */	lis r3, lit_4804@ha
/* 80955674  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)
/* 80955678  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8095567C:
/* 8095567C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80955680  2C 00 00 00 */	cmpwi r0, 0
/* 80955684  41 82 00 28 */	beq lbl_809556AC
/* 80955688  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8095568C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80955690  4B 7F 02 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80955694  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80955698  38 00 00 00 */	li r0, 0
/* 8095569C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809556A0  3C 60 80 95 */	lis r3, lit_4804@ha
/* 809556A4  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)
/* 809556A8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809556AC:
/* 809556AC  38 00 00 00 */	li r0, 0
/* 809556B0  98 1F 0F D1 */	stb r0, 0xfd1(r31)
/* 809556B4  38 00 00 02 */	li r0, 2
/* 809556B8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809556BC:
/* 809556BC  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 809556C0  2C 00 00 02 */	cmpwi r0, 2
/* 809556C4  41 82 00 94 */	beq lbl_80955758
/* 809556C8  40 80 00 10 */	bge lbl_809556D8
/* 809556CC  2C 00 00 00 */	cmpwi r0, 0
/* 809556D0  41 82 00 18 */	beq lbl_809556E8
/* 809556D4  48 00 01 F0 */	b lbl_809558C4
lbl_809556D8:
/* 809556D8  2C 00 00 04 */	cmpwi r0, 4
/* 809556DC  41 82 01 30 */	beq lbl_8095580C
/* 809556E0  40 80 01 E4 */	bge lbl_809558C4
/* 809556E4  48 00 00 D8 */	b lbl_809557BC
lbl_809556E8:
/* 809556E8  38 60 00 99 */	li r3, 0x99
/* 809556EC  4B 7F 74 80 */	b daNpcT_chkTmpBit__FUl
/* 809556F0  2C 03 00 00 */	cmpwi r3, 0
/* 809556F4  40 82 00 14 */	bne lbl_80955708
/* 809556F8  38 00 00 01 */	li r0, 1
/* 809556FC  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80955700  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80955704  48 00 01 C0 */	b lbl_809558C4
lbl_80955708:
/* 80955708  38 60 00 B4 */	li r3, 0xb4
/* 8095570C  4B 7F 74 60 */	b daNpcT_chkTmpBit__FUl
/* 80955710  2C 03 00 00 */	cmpwi r3, 0
/* 80955714  40 82 01 B0 */	bne lbl_809558C4
/* 80955718  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8095571C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80955720  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 80955724  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80955728  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8095572C  40 82 01 98 */	bne lbl_809558C4
/* 80955730  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 80955734  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80955738  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8095573C  7D 89 03 A6 */	mtctr r12
/* 80955740  4E 80 04 21 */	bctrl 
/* 80955744  28 03 00 00 */	cmplwi r3, 0
/* 80955748  41 82 01 7C */	beq lbl_809558C4
/* 8095574C  38 00 00 01 */	li r0, 1
/* 80955750  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80955754  48 00 01 70 */	b lbl_809558C4
lbl_80955758:
/* 80955758  88 1F 0F CF */	lbz r0, 0xfcf(r31)
/* 8095575C  28 00 00 00 */	cmplwi r0, 0
/* 80955760  41 82 00 14 */	beq lbl_80955774
/* 80955764  38 00 00 01 */	li r0, 1
/* 80955768  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 8095576C  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80955770  48 00 01 54 */	b lbl_809558C4
lbl_80955774:
/* 80955774  38 60 00 B5 */	li r3, 0xb5
/* 80955778  4B 7F 73 F4 */	b daNpcT_chkTmpBit__FUl
/* 8095577C  2C 03 00 00 */	cmpwi r3, 0
/* 80955780  41 82 01 44 */	beq lbl_809558C4
/* 80955784  38 60 00 B6 */	li r3, 0xb6
/* 80955788  4B 7F 73 E4 */	b daNpcT_chkTmpBit__FUl
/* 8095578C  2C 03 00 00 */	cmpwi r3, 0
/* 80955790  41 82 00 18 */	beq lbl_809557A8
/* 80955794  38 00 00 0A */	li r0, 0xa
/* 80955798  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8095579C  38 00 00 01 */	li r0, 1
/* 809557A0  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 809557A4  48 00 01 20 */	b lbl_809558C4
lbl_809557A8:
/* 809557A8  38 00 00 05 */	li r0, 5
/* 809557AC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 809557B0  38 00 00 01 */	li r0, 1
/* 809557B4  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 809557B8  48 00 01 0C */	b lbl_809558C4
lbl_809557BC:
/* 809557BC  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 809557C0  4B 7E FF 48 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809557C4  28 03 00 00 */	cmplwi r3, 0
/* 809557C8  41 82 00 FC */	beq lbl_809558C4
/* 809557CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809557D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809557D4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809557D8  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 809557DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809557E0  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 809557E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809557E8  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 809557EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809557F0  38 81 00 14 */	addi r4, r1, 0x14
/* 809557F4  48 00 1E 69 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 809557F8  2C 03 00 00 */	cmpwi r3, 0
/* 809557FC  41 82 00 C8 */	beq lbl_809558C4
/* 80955800  38 00 00 0B */	li r0, 0xb
/* 80955804  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80955808  48 00 00 BC */	b lbl_809558C4
lbl_8095580C:
/* 8095580C  38 60 00 17 */	li r3, 0x17
/* 80955810  4B 7F 72 9C */	b daNpcT_chkEvtBit__FUl
/* 80955814  2C 03 00 00 */	cmpwi r3, 0
/* 80955818  40 82 00 70 */	bne lbl_80955888
/* 8095581C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80955820  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80955824  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80955828  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8095582C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80955830  7D 89 03 A6 */	mtctr r12
/* 80955834  4E 80 04 21 */	bctrl 
/* 80955838  28 03 00 00 */	cmplwi r3, 0
/* 8095583C  41 82 00 4C */	beq lbl_80955888
/* 80955840  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80955844  4B 7E FE C4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80955848  28 03 00 00 */	cmplwi r3, 0
/* 8095584C  41 82 00 3C */	beq lbl_80955888
/* 80955850  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80955854  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80955858  D0 01 00 08 */	stfs f0, 8(r1)
/* 8095585C  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80955860  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80955864  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80955868  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8095586C  38 81 00 08 */	addi r4, r1, 8
/* 80955870  48 00 1D ED */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 80955874  2C 03 00 00 */	cmpwi r3, 0
/* 80955878  41 82 00 10 */	beq lbl_80955888
/* 8095587C  38 00 00 01 */	li r0, 1
/* 80955880  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80955884  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80955888:
/* 80955888  38 60 00 B1 */	li r3, 0xb1
/* 8095588C  4B 7F 72 E0 */	b daNpcT_chkTmpBit__FUl
/* 80955890  2C 03 00 00 */	cmpwi r3, 0
/* 80955894  40 82 00 30 */	bne lbl_809558C4
/* 80955898  38 60 00 AF */	li r3, 0xaf
/* 8095589C  4B 7F 72 D0 */	b daNpcT_chkTmpBit__FUl
/* 809558A0  2C 03 00 00 */	cmpwi r3, 0
/* 809558A4  41 82 00 20 */	beq lbl_809558C4
/* 809558A8  38 60 00 B0 */	li r3, 0xb0
/* 809558AC  4B 7F 72 C0 */	b daNpcT_chkTmpBit__FUl
/* 809558B0  2C 03 00 00 */	cmpwi r3, 0
/* 809558B4  41 82 00 10 */	beq lbl_809558C4
/* 809558B8  38 00 00 01 */	li r0, 1
/* 809558BC  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 809558C0  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_809558C4:
/* 809558C4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809558C8  2C 00 00 00 */	cmpwi r0, 0
/* 809558CC  40 82 02 60 */	bne lbl_80955B2C
/* 809558D0  38 60 00 A9 */	li r3, 0xa9
/* 809558D4  4B 7F 71 D8 */	b daNpcT_chkEvtBit__FUl
/* 809558D8  2C 03 00 00 */	cmpwi r3, 0
/* 809558DC  41 82 00 34 */	beq lbl_80955910
/* 809558E0  7F E3 FB 78 */	mr r3, r31
/* 809558E4  38 80 00 00 */	li r4, 0
/* 809558E8  4B FF EB 11 */	bl duck__11daNpc_Aru_cFi
/* 809558EC  2C 03 00 00 */	cmpwi r3, 0
/* 809558F0  41 82 00 20 */	beq lbl_80955910
/* 809558F4  38 60 00 00 */	li r3, 0
/* 809558F8  98 7F 0F D1 */	stb r3, 0xfd1(r31)
/* 809558FC  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 80955900  2C 00 00 01 */	cmpwi r0, 1
/* 80955904  40 82 02 28 */	bne lbl_80955B2C
/* 80955908  B0 7F 0D D8 */	sth r3, 0xdd8(r31)
/* 8095590C  48 00 02 20 */	b lbl_80955B2C
lbl_80955910:
/* 80955910  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80955914  28 00 00 00 */	cmplwi r0, 0
/* 80955918  41 82 00 1C */	beq lbl_80955934
/* 8095591C  28 00 00 02 */	cmplwi r0, 2
/* 80955920  40 82 00 74 */	bne lbl_80955994
/* 80955924  38 60 00 B6 */	li r3, 0xb6
/* 80955928  4B 7F 72 44 */	b daNpcT_chkTmpBit__FUl
/* 8095592C  2C 03 00 00 */	cmpwi r3, 0
/* 80955930  41 82 00 64 */	beq lbl_80955994
lbl_80955934:
/* 80955934  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80955938  2C 00 00 01 */	cmpwi r0, 1
/* 8095593C  41 82 00 2C */	beq lbl_80955968
/* 80955940  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80955944  4B 7E FD B8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80955948  38 00 00 00 */	li r0, 0
/* 8095594C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80955950  3C 60 80 95 */	lis r3, lit_4100@ha
/* 80955954  C0 03 77 98 */	lfs f0, lit_4100@l(r3)
/* 80955958  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8095595C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80955960  38 00 00 01 */	li r0, 1
/* 80955964  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80955968:
/* 80955968  38 00 00 00 */	li r0, 0
/* 8095596C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80955970  7F E3 FB 78 */	mr r3, r31
/* 80955974  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80955978  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8095597C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80955980  4B 6C 4D 90 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80955984  7C 64 1B 78 */	mr r4, r3
/* 80955988  7F E3 FB 78 */	mr r3, r31
/* 8095598C  4B FF ED B9 */	bl lookround__11daNpc_Aru_cFs
/* 80955990  48 00 01 9C */	b lbl_80955B2C
lbl_80955994:
/* 80955994  88 1F 0F CD */	lbz r0, 0xfcd(r31)
/* 80955998  28 00 00 00 */	cmplwi r0, 0
/* 8095599C  41 82 00 0C */	beq lbl_809559A8
/* 809559A0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809559A4  4B 7E FD 58 */	b remove__18daNpcT_ActorMngr_cFv
lbl_809559A8:
/* 809559A8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809559AC  4B 7E FD 5C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809559B0  28 03 00 00 */	cmplwi r3, 0
/* 809559B4  41 82 00 C8 */	beq lbl_80955A7C
/* 809559B8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809559BC  2C 00 00 01 */	cmpwi r0, 1
/* 809559C0  41 82 00 2C */	beq lbl_809559EC
/* 809559C4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809559C8  4B 7E FD 34 */	b remove__18daNpcT_ActorMngr_cFv
/* 809559CC  38 00 00 00 */	li r0, 0
/* 809559D0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809559D4  3C 60 80 95 */	lis r3, lit_4100@ha
/* 809559D8  C0 03 77 98 */	lfs f0, lit_4100@l(r3)
/* 809559DC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809559E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809559E4  38 00 00 01 */	li r0, 1
/* 809559E8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809559EC:
/* 809559EC  38 00 00 00 */	li r0, 0
/* 809559F0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809559F4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809559F8  4B 7E FD 10 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809559FC  7C 64 1B 78 */	mr r4, r3
/* 80955A00  7F E3 FB 78 */	mr r3, r31
/* 80955A04  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80955A08  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80955A0C  4B 7F 51 C4 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80955A10  2C 03 00 00 */	cmpwi r3, 0
/* 80955A14  40 82 00 3C */	bne lbl_80955A50
/* 80955A18  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80955A1C  2C 00 00 00 */	cmpwi r0, 0
/* 80955A20  41 82 00 28 */	beq lbl_80955A48
/* 80955A24  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80955A28  4B 7E FC D4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80955A2C  38 00 00 00 */	li r0, 0
/* 80955A30  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80955A34  3C 60 80 95 */	lis r3, lit_4100@ha
/* 80955A38  C0 03 77 98 */	lfs f0, lit_4100@l(r3)
/* 80955A3C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80955A40  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80955A44  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80955A48:
/* 80955A48  38 00 00 00 */	li r0, 0
/* 80955A4C  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80955A50:
/* 80955A50  7F E3 FB 78 */	mr r3, r31
/* 80955A54  4B 7F 58 E4 */	b srchPlayerActor__8daNpcT_cFv
/* 80955A58  2C 03 00 00 */	cmpwi r3, 0
/* 80955A5C  40 82 00 D0 */	bne lbl_80955B2C
/* 80955A60  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80955A64  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80955A68  7C 03 00 00 */	cmpw r3, r0
/* 80955A6C  40 82 00 C0 */	bne lbl_80955B2C
/* 80955A70  38 00 00 01 */	li r0, 1
/* 80955A74  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80955A78  48 00 00 B4 */	b lbl_80955B2C
lbl_80955A7C:
/* 80955A7C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80955A80  2C 00 00 00 */	cmpwi r0, 0
/* 80955A84  41 82 00 28 */	beq lbl_80955AAC
/* 80955A88  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80955A8C  4B 7E FC 70 */	b remove__18daNpcT_ActorMngr_cFv
/* 80955A90  38 00 00 00 */	li r0, 0
/* 80955A94  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80955A98  3C 60 80 95 */	lis r3, lit_4100@ha
/* 80955A9C  C0 03 77 98 */	lfs f0, lit_4100@l(r3)
/* 80955AA0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80955AA4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80955AA8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80955AAC:
/* 80955AAC  38 00 00 00 */	li r0, 0
/* 80955AB0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80955AB4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80955AB8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80955ABC  7C 04 00 00 */	cmpw r4, r0
/* 80955AC0  41 82 00 58 */	beq lbl_80955B18
/* 80955AC4  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80955AC8  28 00 00 00 */	cmplwi r0, 0
/* 80955ACC  41 82 00 30 */	beq lbl_80955AFC
/* 80955AD0  7F E3 FB 78 */	mr r3, r31
/* 80955AD4  38 A0 00 0C */	li r5, 0xc
/* 80955AD8  38 C0 00 0B */	li r6, 0xb
/* 80955ADC  38 E0 00 0F */	li r7, 0xf
/* 80955AE0  39 00 00 00 */	li r8, 0
/* 80955AE4  4B 7F 5B 64 */	b step__8daNpcT_cFsiiii
/* 80955AE8  2C 03 00 00 */	cmpwi r3, 0
/* 80955AEC  41 82 00 20 */	beq lbl_80955B0C
/* 80955AF0  38 00 00 01 */	li r0, 1
/* 80955AF4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80955AF8  48 00 00 14 */	b lbl_80955B0C
lbl_80955AFC:
/* 80955AFC  7F E3 FB 78 */	mr r3, r31
/* 80955B00  4B 7F 4F 18 */	b setAngle__8daNpcT_cFs
/* 80955B04  38 00 00 01 */	li r0, 1
/* 80955B08  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80955B0C:
/* 80955B0C  38 00 00 00 */	li r0, 0
/* 80955B10  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80955B14  48 00 00 18 */	b lbl_80955B2C
lbl_80955B18:
/* 80955B18  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80955B1C  28 00 00 00 */	cmplwi r0, 0
/* 80955B20  40 82 00 0C */	bne lbl_80955B2C
/* 80955B24  7F E3 FB 78 */	mr r3, r31
/* 80955B28  4B 7F 58 10 */	b srchPlayerActor__8daNpcT_cFv
lbl_80955B2C:
/* 80955B2C  38 60 00 01 */	li r3, 1
/* 80955B30  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80955B34  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80955B38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80955B3C  7C 08 03 A6 */	mtlr r0
/* 80955B40  38 21 00 30 */	addi r1, r1, 0x30
/* 80955B44  4E 80 00 20 */	blr 
