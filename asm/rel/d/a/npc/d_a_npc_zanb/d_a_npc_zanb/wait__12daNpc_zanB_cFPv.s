lbl_80B6A598:
/* 80B6A598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6A59C  7C 08 02 A6 */	mflr r0
/* 80B6A5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6A5A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6A5A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6A5AC  7C 7F 1B 78 */	mr r31, r3
/* 80B6A5B0  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B6A5B4  2C 00 00 02 */	cmpwi r0, 2
/* 80B6A5B8  41 82 00 FC */	beq lbl_80B6A6B4
/* 80B6A5BC  40 80 02 9C */	bge lbl_80B6A858
/* 80B6A5C0  2C 00 00 00 */	cmpwi r0, 0
/* 80B6A5C4  40 80 00 0C */	bge lbl_80B6A5D0
/* 80B6A5C8  48 00 02 90 */	b lbl_80B6A858
/* 80B6A5CC  48 00 02 8C */	b lbl_80B6A858
lbl_80B6A5D0:
/* 80B6A5D0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B6A5D4  2C 00 00 00 */	cmpwi r0, 0
/* 80B6A5D8  40 82 00 DC */	bne lbl_80B6A6B4
/* 80B6A5DC  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B6A5E0  28 00 00 00 */	cmplwi r0, 0
/* 80B6A5E4  40 82 00 68 */	bne lbl_80B6A64C
/* 80B6A5E8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B6A5EC  2C 00 00 00 */	cmpwi r0, 0
/* 80B6A5F0  41 82 00 28 */	beq lbl_80B6A618
/* 80B6A5F4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B6A5F8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B6A5FC  4B 5D B2 9C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6A600  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B6A604  38 00 00 00 */	li r0, 0
/* 80B6A608  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B6A60C  3C 60 80 B7 */	lis r3, lit_4529@ha
/* 80B6A610  C0 03 BD 7C */	lfs f0, lit_4529@l(r3)
/* 80B6A614  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B6A618:
/* 80B6A618  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B6A61C  2C 00 00 01 */	cmpwi r0, 1
/* 80B6A620  41 82 00 8C */	beq lbl_80B6A6AC
/* 80B6A624  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B6A628  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B6A62C  4B 5D B2 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6A630  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B6A634  38 00 00 01 */	li r0, 1
/* 80B6A638  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B6A63C  3C 60 80 B7 */	lis r3, lit_4529@ha
/* 80B6A640  C0 03 BD 7C */	lfs f0, lit_4529@l(r3)
/* 80B6A644  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B6A648  48 00 00 64 */	b lbl_80B6A6AC
lbl_80B6A64C:
/* 80B6A64C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B6A650  2C 00 00 00 */	cmpwi r0, 0
/* 80B6A654  41 82 00 28 */	beq lbl_80B6A67C
/* 80B6A658  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B6A65C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B6A660  4B 5D B2 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6A664  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B6A668  38 00 00 00 */	li r0, 0
/* 80B6A66C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B6A670  3C 60 80 B7 */	lis r3, lit_4529@ha
/* 80B6A674  C0 03 BD 7C */	lfs f0, lit_4529@l(r3)
/* 80B6A678  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B6A67C:
/* 80B6A67C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B6A680  2C 00 00 00 */	cmpwi r0, 0
/* 80B6A684  41 82 00 28 */	beq lbl_80B6A6AC
/* 80B6A688  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B6A68C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B6A690  4B 5D B2 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6A694  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B6A698  38 00 00 00 */	li r0, 0
/* 80B6A69C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B6A6A0  3C 60 80 B7 */	lis r3, lit_4529@ha
/* 80B6A6A4  C0 03 BD 7C */	lfs f0, lit_4529@l(r3)
/* 80B6A6A8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B6A6AC:
/* 80B6A6AC  38 00 00 02 */	li r0, 2
/* 80B6A6B0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B6A6B4:
/* 80B6A6B4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B6A6B8  2C 00 00 00 */	cmpwi r0, 0
/* 80B6A6BC  40 82 01 9C */	bne lbl_80B6A858
/* 80B6A6C0  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B6A6C4  28 00 00 00 */	cmplwi r0, 0
/* 80B6A6C8  40 82 00 0C */	bne lbl_80B6A6D4
/* 80B6A6CC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B6A6D0  4B 5D B0 2C */	b remove__18daNpcT_ActorMngr_cFv
lbl_80B6A6D4:
/* 80B6A6D4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B6A6D8  4B 5D B0 30 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B6A6DC  28 03 00 00 */	cmplwi r3, 0
/* 80B6A6E0  41 82 00 D4 */	beq lbl_80B6A7B4
/* 80B6A6E4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B6A6E8  28 00 00 00 */	cmplwi r0, 0
/* 80B6A6EC  40 82 00 C8 */	bne lbl_80B6A7B4
/* 80B6A6F0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6A6F4  2C 00 00 01 */	cmpwi r0, 1
/* 80B6A6F8  41 82 00 2C */	beq lbl_80B6A724
/* 80B6A6FC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6A700  4B 5D AF FC */	b remove__18daNpcT_ActorMngr_cFv
/* 80B6A704  38 00 00 00 */	li r0, 0
/* 80B6A708  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B6A70C  3C 60 80 B7 */	lis r3, lit_4190@ha
/* 80B6A710  C0 03 BD 6C */	lfs f0, lit_4190@l(r3)
/* 80B6A714  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6A718  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6A71C  38 00 00 01 */	li r0, 1
/* 80B6A720  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B6A724:
/* 80B6A724  38 00 00 00 */	li r0, 0
/* 80B6A728  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6A72C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B6A730  4B 5D AF D8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B6A734  7C 64 1B 78 */	mr r4, r3
/* 80B6A738  7F E3 FB 78 */	mr r3, r31
/* 80B6A73C  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80B6A740  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80B6A744  4B 5E 04 8C */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B6A748  2C 03 00 00 */	cmpwi r3, 0
/* 80B6A74C  40 82 00 3C */	bne lbl_80B6A788
/* 80B6A750  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6A754  2C 00 00 00 */	cmpwi r0, 0
/* 80B6A758  41 82 00 28 */	beq lbl_80B6A780
/* 80B6A75C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6A760  4B 5D AF 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B6A764  38 00 00 00 */	li r0, 0
/* 80B6A768  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B6A76C  3C 60 80 B7 */	lis r3, lit_4190@ha
/* 80B6A770  C0 03 BD 6C */	lfs f0, lit_4190@l(r3)
/* 80B6A774  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6A778  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6A77C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B6A780:
/* 80B6A780  38 00 00 00 */	li r0, 0
/* 80B6A784  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80B6A788:
/* 80B6A788  7F E3 FB 78 */	mr r3, r31
/* 80B6A78C  4B 5E 0B AC */	b srchPlayerActor__8daNpcT_cFv
/* 80B6A790  2C 03 00 00 */	cmpwi r3, 0
/* 80B6A794  40 82 00 C4 */	bne lbl_80B6A858
/* 80B6A798  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80B6A79C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B6A7A0  7C 03 00 00 */	cmpw r3, r0
/* 80B6A7A4  40 82 00 B4 */	bne lbl_80B6A858
/* 80B6A7A8  38 00 00 01 */	li r0, 1
/* 80B6A7AC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80B6A7B0  48 00 00 A8 */	b lbl_80B6A858
lbl_80B6A7B4:
/* 80B6A7B4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6A7B8  2C 00 00 00 */	cmpwi r0, 0
/* 80B6A7BC  41 82 00 28 */	beq lbl_80B6A7E4
/* 80B6A7C0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6A7C4  4B 5D AF 38 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B6A7C8  38 00 00 00 */	li r0, 0
/* 80B6A7CC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B6A7D0  3C 60 80 B7 */	lis r3, lit_4190@ha
/* 80B6A7D4  C0 03 BD 6C */	lfs f0, lit_4190@l(r3)
/* 80B6A7D8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6A7DC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6A7E0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B6A7E4:
/* 80B6A7E4  38 00 00 00 */	li r0, 0
/* 80B6A7E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6A7EC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B6A7F0  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B6A7F4  7C 04 00 00 */	cmpw r4, r0
/* 80B6A7F8  41 82 00 58 */	beq lbl_80B6A850
/* 80B6A7FC  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80B6A800  28 00 00 00 */	cmplwi r0, 0
/* 80B6A804  41 82 00 30 */	beq lbl_80B6A834
/* 80B6A808  7F E3 FB 78 */	mr r3, r31
/* 80B6A80C  38 A0 FF FF */	li r5, -1
/* 80B6A810  38 C0 FF FF */	li r6, -1
/* 80B6A814  38 E0 00 0F */	li r7, 0xf
/* 80B6A818  39 00 00 00 */	li r8, 0
/* 80B6A81C  4B 5E 0E 2C */	b step__8daNpcT_cFsiiii
/* 80B6A820  2C 03 00 00 */	cmpwi r3, 0
/* 80B6A824  41 82 00 20 */	beq lbl_80B6A844
/* 80B6A828  38 00 00 01 */	li r0, 1
/* 80B6A82C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80B6A830  48 00 00 14 */	b lbl_80B6A844
lbl_80B6A834:
/* 80B6A834  7F E3 FB 78 */	mr r3, r31
/* 80B6A838  4B 5E 01 E0 */	b setAngle__8daNpcT_cFs
/* 80B6A83C  38 00 00 01 */	li r0, 1
/* 80B6A840  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B6A844:
/* 80B6A844  38 00 00 00 */	li r0, 0
/* 80B6A848  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80B6A84C  48 00 00 0C */	b lbl_80B6A858
lbl_80B6A850:
/* 80B6A850  7F E3 FB 78 */	mr r3, r31
/* 80B6A854  4B 5E 0A E4 */	b srchPlayerActor__8daNpcT_cFv
lbl_80B6A858:
/* 80B6A858  38 60 00 01 */	li r3, 1
/* 80B6A85C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6A860  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6A864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6A868  7C 08 03 A6 */	mtlr r0
/* 80B6A86C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6A870  4E 80 00 20 */	blr 
