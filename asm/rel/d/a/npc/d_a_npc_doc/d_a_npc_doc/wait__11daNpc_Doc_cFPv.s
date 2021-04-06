lbl_809A86F4:
/* 809A86F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A86F8  7C 08 02 A6 */	mflr r0
/* 809A86FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A8700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A8704  93 C1 00 08 */	stw r30, 8(r1)
/* 809A8708  7C 7F 1B 78 */	mr r31, r3
/* 809A870C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809A8710  2C 00 00 02 */	cmpwi r0, 2
/* 809A8714  41 82 01 1C */	beq lbl_809A8830
/* 809A8718  40 80 03 68 */	bge lbl_809A8A80
/* 809A871C  2C 00 00 00 */	cmpwi r0, 0
/* 809A8720  40 80 00 0C */	bge lbl_809A872C
/* 809A8724  48 00 03 5C */	b lbl_809A8A80
/* 809A8728  48 00 03 58 */	b lbl_809A8A80
lbl_809A872C:
/* 809A872C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809A8730  2C 00 00 00 */	cmpwi r0, 0
/* 809A8734  40 82 00 FC */	bne lbl_809A8830
/* 809A8738  88 1F 0F C6 */	lbz r0, 0xfc6(r31)
/* 809A873C  28 00 00 00 */	cmplwi r0, 0
/* 809A8740  41 82 00 88 */	beq lbl_809A87C8
/* 809A8744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A8748  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A874C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809A8750  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809A8754  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809A8758  40 82 00 70 */	bne lbl_809A87C8
/* 809A875C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 809A8760  2C 00 00 09 */	cmpwi r0, 9
/* 809A8764  41 82 00 28 */	beq lbl_809A878C
/* 809A8768  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 809A876C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809A8770  4B 79 D1 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809A8774  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 809A8778  38 00 00 09 */	li r0, 9
/* 809A877C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 809A8780  3C 60 80 9B */	lis r3, lit_4588@ha /* 0x809AA3DC@ha */
/* 809A8784  C0 03 A3 DC */	lfs f0, lit_4588@l(r3)  /* 0x809AA3DC@l */
/* 809A8788  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_809A878C:
/* 809A878C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809A8790  2C 00 00 0B */	cmpwi r0, 0xb
/* 809A8794  41 82 00 28 */	beq lbl_809A87BC
/* 809A8798  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809A879C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809A87A0  4B 79 D0 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809A87A4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809A87A8  38 00 00 0B */	li r0, 0xb
/* 809A87AC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809A87B0  3C 60 80 9B */	lis r3, lit_4588@ha /* 0x809AA3DC@ha */
/* 809A87B4  C0 03 A3 DC */	lfs f0, lit_4588@l(r3)  /* 0x809AA3DC@l */
/* 809A87B8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809A87BC:
/* 809A87BC  38 00 00 00 */	li r0, 0
/* 809A87C0  98 1F 0F C6 */	stb r0, 0xfc6(r31)
/* 809A87C4  48 00 00 64 */	b lbl_809A8828
lbl_809A87C8:
/* 809A87C8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 809A87CC  2C 00 00 09 */	cmpwi r0, 9
/* 809A87D0  41 82 00 28 */	beq lbl_809A87F8
/* 809A87D4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 809A87D8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809A87DC  4B 79 D0 BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809A87E0  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 809A87E4  38 00 00 09 */	li r0, 9
/* 809A87E8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 809A87EC  3C 60 80 9B */	lis r3, lit_4588@ha /* 0x809AA3DC@ha */
/* 809A87F0  C0 03 A3 DC */	lfs f0, lit_4588@l(r3)  /* 0x809AA3DC@l */
/* 809A87F4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_809A87F8:
/* 809A87F8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809A87FC  2C 00 00 00 */	cmpwi r0, 0
/* 809A8800  41 82 00 28 */	beq lbl_809A8828
/* 809A8804  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809A8808  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809A880C  4B 79 D0 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809A8810  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809A8814  38 00 00 00 */	li r0, 0
/* 809A8818  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809A881C  3C 60 80 9B */	lis r3, lit_4588@ha /* 0x809AA3DC@ha */
/* 809A8820  C0 03 A3 DC */	lfs f0, lit_4588@l(r3)  /* 0x809AA3DC@l */
/* 809A8824  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809A8828:
/* 809A8828  38 00 00 02 */	li r0, 2
/* 809A882C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809A8830:
/* 809A8830  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 809A8834  28 00 00 01 */	cmplwi r0, 1
/* 809A8838  40 82 00 20 */	bne lbl_809A8858
/* 809A883C  38 60 00 7A */	li r3, 0x7a
/* 809A8840  4B 7A 42 6D */	bl daNpcT_chkEvtBit__FUl
/* 809A8844  2C 03 00 00 */	cmpwi r3, 0
/* 809A8848  40 82 00 10 */	bne lbl_809A8858
/* 809A884C  38 00 00 01 */	li r0, 1
/* 809A8850  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 809A8854  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_809A8858:
/* 809A8858  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809A885C  2C 00 00 00 */	cmpwi r0, 0
/* 809A8860  40 82 02 20 */	bne lbl_809A8A80
/* 809A8864  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809A8868  2C 00 00 0B */	cmpwi r0, 0xb
/* 809A886C  40 82 00 60 */	bne lbl_809A88CC
/* 809A8870  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809A8874  2C 00 00 00 */	cmpwi r0, 0
/* 809A8878  41 82 00 28 */	beq lbl_809A88A0
/* 809A887C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809A8880  4B 79 CE 7D */	bl remove__18daNpcT_ActorMngr_cFv
/* 809A8884  38 00 00 00 */	li r0, 0
/* 809A8888  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809A888C  3C 60 80 9B */	lis r3, lit_4037@ha /* 0x809AA3C4@ha */
/* 809A8890  C0 03 A3 C4 */	lfs f0, lit_4037@l(r3)  /* 0x809AA3C4@l */
/* 809A8894  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809A8898  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809A889C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809A88A0:
/* 809A88A0  38 00 00 00 */	li r0, 0
/* 809A88A4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809A88A8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809A88AC  4B 79 D1 79 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 809A88B0  2C 03 00 00 */	cmpwi r3, 0
/* 809A88B4  41 82 00 0C */	beq lbl_809A88C0
/* 809A88B8  38 00 00 01 */	li r0, 1
/* 809A88BC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809A88C0:
/* 809A88C0  38 00 00 00 */	li r0, 0
/* 809A88C4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 809A88C8  48 00 01 B8 */	b lbl_809A8A80
lbl_809A88CC:
/* 809A88CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A88D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A88D4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809A88D8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809A88DC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809A88E0  41 82 00 0C */	beq lbl_809A88EC
/* 809A88E4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809A88E8  4B 79 CE 15 */	bl remove__18daNpcT_ActorMngr_cFv
lbl_809A88EC:
/* 809A88EC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809A88F0  4B 79 CE 19 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809A88F4  28 03 00 00 */	cmplwi r3, 0
/* 809A88F8  41 82 00 C8 */	beq lbl_809A89C0
/* 809A88FC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809A8900  2C 00 00 01 */	cmpwi r0, 1
/* 809A8904  41 82 00 2C */	beq lbl_809A8930
/* 809A8908  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809A890C  4B 79 CD F1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809A8910  38 00 00 00 */	li r0, 0
/* 809A8914  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809A8918  3C 60 80 9B */	lis r3, lit_4037@ha /* 0x809AA3C4@ha */
/* 809A891C  C0 03 A3 C4 */	lfs f0, lit_4037@l(r3)  /* 0x809AA3C4@l */
/* 809A8920  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809A8924  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809A8928  38 00 00 01 */	li r0, 1
/* 809A892C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809A8930:
/* 809A8930  38 00 00 00 */	li r0, 0
/* 809A8934  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809A8938  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809A893C  4B 79 CD CD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809A8940  7C 64 1B 78 */	mr r4, r3
/* 809A8944  7F E3 FB 78 */	mr r3, r31
/* 809A8948  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 809A894C  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 809A8950  4B 7A 22 81 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 809A8954  2C 03 00 00 */	cmpwi r3, 0
/* 809A8958  40 82 00 3C */	bne lbl_809A8994
/* 809A895C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809A8960  2C 00 00 00 */	cmpwi r0, 0
/* 809A8964  41 82 00 28 */	beq lbl_809A898C
/* 809A8968  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809A896C  4B 79 CD 91 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809A8970  38 00 00 00 */	li r0, 0
/* 809A8974  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809A8978  3C 60 80 9B */	lis r3, lit_4037@ha /* 0x809AA3C4@ha */
/* 809A897C  C0 03 A3 C4 */	lfs f0, lit_4037@l(r3)  /* 0x809AA3C4@l */
/* 809A8980  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809A8984  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809A8988  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809A898C:
/* 809A898C  38 00 00 00 */	li r0, 0
/* 809A8990  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_809A8994:
/* 809A8994  7F E3 FB 78 */	mr r3, r31
/* 809A8998  4B 7A 29 A1 */	bl srchPlayerActor__8daNpcT_cFv
/* 809A899C  2C 03 00 00 */	cmpwi r3, 0
/* 809A89A0  40 82 00 E0 */	bne lbl_809A8A80
/* 809A89A4  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809A89A8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 809A89AC  7C 03 00 00 */	cmpw r3, r0
/* 809A89B0  40 82 00 D0 */	bne lbl_809A8A80
/* 809A89B4  38 00 00 01 */	li r0, 1
/* 809A89B8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 809A89BC  48 00 00 C4 */	b lbl_809A8A80
lbl_809A89C0:
/* 809A89C0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809A89C4  2C 00 00 00 */	cmpwi r0, 0
/* 809A89C8  41 82 00 28 */	beq lbl_809A89F0
/* 809A89CC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809A89D0  4B 79 CD 2D */	bl remove__18daNpcT_ActorMngr_cFv
/* 809A89D4  38 00 00 00 */	li r0, 0
/* 809A89D8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809A89DC  3C 60 80 9B */	lis r3, lit_4037@ha /* 0x809AA3C4@ha */
/* 809A89E0  C0 03 A3 C4 */	lfs f0, lit_4037@l(r3)  /* 0x809AA3C4@l */
/* 809A89E4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809A89E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809A89EC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809A89F0:
/* 809A89F0  38 00 00 00 */	li r0, 0
/* 809A89F4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809A89F8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809A89FC  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 809A8A00  7C 04 00 00 */	cmpw r4, r0
/* 809A8A04  41 82 00 68 */	beq lbl_809A8A6C
/* 809A8A08  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 809A8A0C  28 00 00 00 */	cmplwi r0, 0
/* 809A8A10  41 82 00 38 */	beq lbl_809A8A48
/* 809A8A14  7F E3 FB 78 */	mr r3, r31
/* 809A8A18  38 A0 FF FF */	li r5, -1
/* 809A8A1C  38 C0 FF FF */	li r6, -1
/* 809A8A20  38 E0 00 1E */	li r7, 0x1e
/* 809A8A24  39 00 00 00 */	li r8, 0
/* 809A8A28  4B 7A 2C 21 */	bl step__8daNpcT_cFsiiii
/* 809A8A2C  2C 03 00 00 */	cmpwi r3, 0
/* 809A8A30  41 82 00 30 */	beq lbl_809A8A60
/* 809A8A34  38 00 00 01 */	li r0, 1
/* 809A8A38  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 809A8A3C  38 00 00 00 */	li r0, 0
/* 809A8A40  98 1F 0F C6 */	stb r0, 0xfc6(r31)
/* 809A8A44  48 00 00 1C */	b lbl_809A8A60
lbl_809A8A48:
/* 809A8A48  7F E3 FB 78 */	mr r3, r31
/* 809A8A4C  4B 7A 1F CD */	bl setAngle__8daNpcT_cFs
/* 809A8A50  38 00 00 01 */	li r0, 1
/* 809A8A54  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 809A8A58  38 00 00 00 */	li r0, 0
/* 809A8A5C  98 1F 0F C6 */	stb r0, 0xfc6(r31)
lbl_809A8A60:
/* 809A8A60  38 00 00 00 */	li r0, 0
/* 809A8A64  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 809A8A68  48 00 00 18 */	b lbl_809A8A80
lbl_809A8A6C:
/* 809A8A6C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809A8A70  28 00 00 00 */	cmplwi r0, 0
/* 809A8A74  40 82 00 0C */	bne lbl_809A8A80
/* 809A8A78  7F E3 FB 78 */	mr r3, r31
/* 809A8A7C  4B 7A 28 BD */	bl srchPlayerActor__8daNpcT_cFv
lbl_809A8A80:
/* 809A8A80  38 60 00 01 */	li r3, 1
/* 809A8A84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A8A88  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A8A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A8A90  7C 08 03 A6 */	mtlr r0
/* 809A8A94  38 21 00 10 */	addi r1, r1, 0x10
/* 809A8A98  4E 80 00 20 */	blr 
