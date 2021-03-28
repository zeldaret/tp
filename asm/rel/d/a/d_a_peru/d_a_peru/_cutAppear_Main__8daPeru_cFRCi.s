lbl_80D4A334:
/* 80D4A334  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D4A338  7C 08 02 A6 */	mflr r0
/* 80D4A33C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4A340  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4A344  4B 61 7E 98 */	b _savegpr_29
/* 80D4A348  7C 7E 1B 78 */	mr r30, r3
/* 80D4A34C  3B E0 00 00 */	li r31, 0
/* 80D4A350  80 04 00 00 */	lwz r0, 0(r4)
/* 80D4A354  2C 00 00 64 */	cmpwi r0, 0x64
/* 80D4A358  41 82 02 C0 */	beq lbl_80D4A618
/* 80D4A35C  40 80 00 64 */	bge lbl_80D4A3C0
/* 80D4A360  2C 00 00 32 */	cmpwi r0, 0x32
/* 80D4A364  41 82 01 F4 */	beq lbl_80D4A558
/* 80D4A368  40 80 00 34 */	bge lbl_80D4A39C
/* 80D4A36C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80D4A370  41 82 00 DC */	beq lbl_80D4A44C
/* 80D4A374  40 80 00 1C */	bge lbl_80D4A390
/* 80D4A378  2C 00 00 14 */	cmpwi r0, 0x14
/* 80D4A37C  41 82 00 C8 */	beq lbl_80D4A444
/* 80D4A380  40 80 04 A0 */	bge lbl_80D4A820
/* 80D4A384  2C 00 00 0A */	cmpwi r0, 0xa
/* 80D4A388  41 82 00 98 */	beq lbl_80D4A420
/* 80D4A38C  48 00 04 94 */	b lbl_80D4A820
lbl_80D4A390:
/* 80D4A390  2C 00 00 28 */	cmpwi r0, 0x28
/* 80D4A394  41 82 01 38 */	beq lbl_80D4A4CC
/* 80D4A398  48 00 04 88 */	b lbl_80D4A820
lbl_80D4A39C:
/* 80D4A39C  2C 00 00 50 */	cmpwi r0, 0x50
/* 80D4A3A0  41 82 02 3C */	beq lbl_80D4A5DC
/* 80D4A3A4  40 80 00 10 */	bge lbl_80D4A3B4
/* 80D4A3A8  2C 00 00 46 */	cmpwi r0, 0x46
/* 80D4A3AC  41 82 02 18 */	beq lbl_80D4A5C4
/* 80D4A3B0  48 00 04 70 */	b lbl_80D4A820
lbl_80D4A3B4:
/* 80D4A3B4  2C 00 00 5A */	cmpwi r0, 0x5a
/* 80D4A3B8  41 82 02 48 */	beq lbl_80D4A600
/* 80D4A3BC  48 00 04 64 */	b lbl_80D4A820
lbl_80D4A3C0:
/* 80D4A3C0  2C 00 00 96 */	cmpwi r0, 0x96
/* 80D4A3C4  41 82 03 44 */	beq lbl_80D4A708
/* 80D4A3C8  40 80 00 34 */	bge lbl_80D4A3FC
/* 80D4A3CC  2C 00 00 82 */	cmpwi r0, 0x82
/* 80D4A3D0  41 82 02 B0 */	beq lbl_80D4A680
/* 80D4A3D4  40 80 00 1C */	bge lbl_80D4A3F0
/* 80D4A3D8  2C 00 00 78 */	cmpwi r0, 0x78
/* 80D4A3DC  41 82 02 80 */	beq lbl_80D4A65C
/* 80D4A3E0  40 80 04 40 */	bge lbl_80D4A820
/* 80D4A3E4  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80D4A3E8  41 82 02 54 */	beq lbl_80D4A63C
/* 80D4A3EC  48 00 04 34 */	b lbl_80D4A820
lbl_80D4A3F0:
/* 80D4A3F0  2C 00 00 8C */	cmpwi r0, 0x8c
/* 80D4A3F4  41 82 02 B0 */	beq lbl_80D4A6A4
/* 80D4A3F8  48 00 04 28 */	b lbl_80D4A820
lbl_80D4A3FC:
/* 80D4A3FC  2C 00 00 AA */	cmpwi r0, 0xaa
/* 80D4A400  41 82 03 E4 */	beq lbl_80D4A7E4
/* 80D4A404  40 80 00 10 */	bge lbl_80D4A414
/* 80D4A408  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 80D4A40C  41 82 03 14 */	beq lbl_80D4A720
/* 80D4A410  48 00 04 10 */	b lbl_80D4A820
lbl_80D4A414:
/* 80D4A414  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 80D4A418  41 82 03 F0 */	beq lbl_80D4A808
/* 80D4A41C  48 00 04 04 */	b lbl_80D4A820
lbl_80D4A420:
/* 80D4A420  38 80 00 00 */	li r4, 0
/* 80D4A424  38 A0 00 00 */	li r5, 0
/* 80D4A428  38 C0 00 00 */	li r6, 0
/* 80D4A42C  38 E0 00 00 */	li r7, 0
/* 80D4A430  4B 40 18 48 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80D4A434  2C 03 00 00 */	cmpwi r3, 0
/* 80D4A438  41 82 03 EC */	beq lbl_80D4A824
/* 80D4A43C  3B E0 00 01 */	li r31, 1
/* 80D4A440  48 00 03 E4 */	b lbl_80D4A824
lbl_80D4A444:
/* 80D4A444  3B E0 00 01 */	li r31, 1
/* 80D4A448  48 00 03 DC */	b lbl_80D4A824
lbl_80D4A44C:
/* 80D4A44C  38 80 00 00 */	li r4, 0
/* 80D4A450  39 9E 0E 5C */	addi r12, r30, 0xe5c
/* 80D4A454  4B 61 7C 30 */	b __ptmf_scall
/* 80D4A458  60 00 00 00 */	nop 
/* 80D4A45C  2C 03 00 00 */	cmpwi r3, 0
/* 80D4A460  41 82 03 C4 */	beq lbl_80D4A824
/* 80D4A464  A8 7E 0E 6A */	lha r3, 0xe6a(r30)
/* 80D4A468  38 03 FF FF */	addi r0, r3, -1
/* 80D4A46C  B0 1E 0E 6A */	sth r0, 0xe6a(r30)
/* 80D4A470  A8 7E 0E 6A */	lha r3, 0xe6a(r30)
/* 80D4A474  7C 60 07 35 */	extsh. r0, r3
/* 80D4A478  41 81 00 0C */	bgt lbl_80D4A484
/* 80D4A47C  3B E0 00 01 */	li r31, 1
/* 80D4A480  48 00 03 A4 */	b lbl_80D4A824
lbl_80D4A484:
/* 80D4A484  38 A0 00 01 */	li r5, 1
/* 80D4A488  2C 03 00 01 */	cmpwi r3, 1
/* 80D4A48C  40 82 00 10 */	bne lbl_80D4A49C
/* 80D4A490  38 00 00 00 */	li r0, 0
/* 80D4A494  90 1E 0E 80 */	stw r0, 0xe80(r30)
/* 80D4A498  38 A0 00 02 */	li r5, 2
lbl_80D4A49C:
/* 80D4A49C  3C 60 80 D5 */	lis r3, lit_5711@ha
/* 80D4A4A0  38 83 C6 04 */	addi r4, r3, lit_5711@l
/* 80D4A4A4  80 64 00 00 */	lwz r3, 0(r4)
/* 80D4A4A8  80 04 00 04 */	lwz r0, 4(r4)
/* 80D4A4AC  90 61 00 08 */	stw r3, 8(r1)
/* 80D4A4B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D4A4B4  80 04 00 08 */	lwz r0, 8(r4)
/* 80D4A4B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D4A4BC  7F C3 F3 78 */	mr r3, r30
/* 80D4A4C0  38 81 00 08 */	addi r4, r1, 8
/* 80D4A4C4  4B FF DE A1 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D4A4C8  48 00 03 5C */	b lbl_80D4A824
lbl_80D4A4CC:
/* 80D4A4CC  A8 9E 0E 6A */	lha r4, 0xe6a(r30)
/* 80D4A4D0  2C 04 00 00 */	cmpwi r4, 0
/* 80D4A4D4  41 80 00 60 */	blt lbl_80D4A534
/* 80D4A4D8  38 04 FF FF */	addi r0, r4, -1
/* 80D4A4DC  B0 1E 0E 6A */	sth r0, 0xe6a(r30)
/* 80D4A4E0  A8 1E 0E 6A */	lha r0, 0xe6a(r30)
/* 80D4A4E4  2C 00 00 00 */	cmpwi r0, 0
/* 80D4A4E8  41 81 03 3C */	bgt lbl_80D4A824
/* 80D4A4EC  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 80D4A4F0  38 A0 00 00 */	li r5, 0
/* 80D4A4F4  4B 40 16 FC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80D4A4F8  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80D4A4FC  2C 00 00 00 */	cmpwi r0, 0
/* 80D4A500  41 82 00 28 */	beq lbl_80D4A528
/* 80D4A504  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80D4A508  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80D4A50C  4B 3F B3 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4A510  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80D4A514  38 00 00 00 */	li r0, 0
/* 80D4A518  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80D4A51C  3C 60 80 D5 */	lis r3, lit_4548@ha
/* 80D4A520  C0 03 C1 28 */	lfs f0, lit_4548@l(r3)
/* 80D4A524  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80D4A528:
/* 80D4A528  38 00 FF FF */	li r0, -1
/* 80D4A52C  B0 1E 0E 6A */	sth r0, 0xe6a(r30)
/* 80D4A530  48 00 02 F4 */	b lbl_80D4A824
lbl_80D4A534:
/* 80D4A534  38 80 00 00 */	li r4, 0
/* 80D4A538  38 A0 00 00 */	li r5, 0
/* 80D4A53C  38 C0 00 00 */	li r6, 0
/* 80D4A540  38 E0 00 00 */	li r7, 0
/* 80D4A544  4B 40 17 34 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80D4A548  2C 03 00 00 */	cmpwi r3, 0
/* 80D4A54C  41 82 02 D8 */	beq lbl_80D4A824
/* 80D4A550  3B E0 00 01 */	li r31, 1
/* 80D4A554  48 00 02 D0 */	b lbl_80D4A824
lbl_80D4A558:
/* 80D4A558  A8 7E 0E 6A */	lha r3, 0xe6a(r30)
/* 80D4A55C  38 03 FF FF */	addi r0, r3, -1
/* 80D4A560  B0 1E 0E 6A */	sth r0, 0xe6a(r30)
/* 80D4A564  A8 1E 0E 6A */	lha r0, 0xe6a(r30)
/* 80D4A568  2C 00 00 00 */	cmpwi r0, 0
/* 80D4A56C  41 81 00 3C */	bgt lbl_80D4A5A8
/* 80D4A570  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80D4A574  2C 00 00 00 */	cmpwi r0, 0
/* 80D4A578  41 82 00 28 */	beq lbl_80D4A5A0
/* 80D4A57C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80D4A580  4B 3F B1 7C */	b remove__18daNpcT_ActorMngr_cFv
/* 80D4A584  38 00 00 00 */	li r0, 0
/* 80D4A588  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80D4A58C  3C 60 80 D5 */	lis r3, lit_4199@ha
/* 80D4A590  C0 03 C1 08 */	lfs f0, lit_4199@l(r3)
/* 80D4A594  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80D4A598  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80D4A59C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80D4A5A0:
/* 80D4A5A0  38 00 00 00 */	li r0, 0
/* 80D4A5A4  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80D4A5A8:
/* 80D4A5A8  7F C3 F3 78 */	mr r3, r30
/* 80D4A5AC  38 80 00 00 */	li r4, 0
/* 80D4A5B0  39 9E 0E 5C */	addi r12, r30, 0xe5c
/* 80D4A5B4  4B 61 7A D0 */	b __ptmf_scall
/* 80D4A5B8  60 00 00 00 */	nop 
/* 80D4A5BC  7C 7F 1B 78 */	mr r31, r3
/* 80D4A5C0  48 00 02 64 */	b lbl_80D4A824
lbl_80D4A5C4:
/* 80D4A5C4  38 80 00 00 */	li r4, 0
/* 80D4A5C8  39 9E 0E 5C */	addi r12, r30, 0xe5c
/* 80D4A5CC  4B 61 7A B8 */	b __ptmf_scall
/* 80D4A5D0  60 00 00 00 */	nop 
/* 80D4A5D4  7C 7F 1B 78 */	mr r31, r3
/* 80D4A5D8  48 00 02 4C */	b lbl_80D4A824
lbl_80D4A5DC:
/* 80D4A5DC  38 80 00 00 */	li r4, 0
/* 80D4A5E0  38 A0 00 00 */	li r5, 0
/* 80D4A5E4  38 C0 00 00 */	li r6, 0
/* 80D4A5E8  38 E0 00 00 */	li r7, 0
/* 80D4A5EC  4B 40 16 8C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80D4A5F0  2C 03 00 00 */	cmpwi r3, 0
/* 80D4A5F4  41 82 02 30 */	beq lbl_80D4A824
/* 80D4A5F8  3B E0 00 01 */	li r31, 1
/* 80D4A5FC  48 00 02 28 */	b lbl_80D4A824
lbl_80D4A600:
/* 80D4A600  38 80 00 00 */	li r4, 0
/* 80D4A604  39 9E 0E 5C */	addi r12, r30, 0xe5c
/* 80D4A608  4B 61 7A 7C */	b __ptmf_scall
/* 80D4A60C  60 00 00 00 */	nop 
/* 80D4A610  7C 7F 1B 78 */	mr r31, r3
/* 80D4A614  48 00 02 10 */	b lbl_80D4A824
lbl_80D4A618:
/* 80D4A618  38 80 00 00 */	li r4, 0
/* 80D4A61C  38 A0 00 00 */	li r5, 0
/* 80D4A620  38 C0 00 00 */	li r6, 0
/* 80D4A624  38 E0 00 00 */	li r7, 0
/* 80D4A628  4B 40 16 50 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80D4A62C  2C 03 00 00 */	cmpwi r3, 0
/* 80D4A630  41 82 01 F4 */	beq lbl_80D4A824
/* 80D4A634  3B E0 00 01 */	li r31, 1
/* 80D4A638  48 00 01 EC */	b lbl_80D4A824
lbl_80D4A63C:
/* 80D4A63C  A8 7E 0E 6A */	lha r3, 0xe6a(r30)
/* 80D4A640  38 03 FF FF */	addi r0, r3, -1
/* 80D4A644  B0 1E 0E 6A */	sth r0, 0xe6a(r30)
/* 80D4A648  A8 1E 0E 6A */	lha r0, 0xe6a(r30)
/* 80D4A64C  2C 00 00 00 */	cmpwi r0, 0
/* 80D4A650  41 81 01 D4 */	bgt lbl_80D4A824
/* 80D4A654  3B E0 00 01 */	li r31, 1
/* 80D4A658  48 00 01 CC */	b lbl_80D4A824
lbl_80D4A65C:
/* 80D4A65C  38 80 00 00 */	li r4, 0
/* 80D4A660  38 A0 00 00 */	li r5, 0
/* 80D4A664  38 C0 00 00 */	li r6, 0
/* 80D4A668  38 E0 00 00 */	li r7, 0
/* 80D4A66C  4B 40 16 0C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80D4A670  2C 03 00 00 */	cmpwi r3, 0
/* 80D4A674  41 82 01 B0 */	beq lbl_80D4A824
/* 80D4A678  3B E0 00 01 */	li r31, 1
/* 80D4A67C  48 00 01 A8 */	b lbl_80D4A824
lbl_80D4A680:
/* 80D4A680  38 80 00 00 */	li r4, 0
/* 80D4A684  38 A0 00 00 */	li r5, 0
/* 80D4A688  38 C0 00 00 */	li r6, 0
/* 80D4A68C  38 E0 00 00 */	li r7, 0
/* 80D4A690  4B 40 15 E8 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80D4A694  2C 03 00 00 */	cmpwi r3, 0
/* 80D4A698  41 82 01 8C */	beq lbl_80D4A824
/* 80D4A69C  3B E0 00 01 */	li r31, 1
/* 80D4A6A0  48 00 01 84 */	b lbl_80D4A824
lbl_80D4A6A4:
/* 80D4A6A4  A8 7E 0E 6A */	lha r3, 0xe6a(r30)
/* 80D4A6A8  38 03 FF FF */	addi r0, r3, -1
/* 80D4A6AC  B0 1E 0E 6A */	sth r0, 0xe6a(r30)
/* 80D4A6B0  A8 7E 0E 6A */	lha r3, 0xe6a(r30)
/* 80D4A6B4  7C 60 07 35 */	extsh. r0, r3
/* 80D4A6B8  41 81 00 0C */	bgt lbl_80D4A6C4
/* 80D4A6BC  3B E0 00 01 */	li r31, 1
/* 80D4A6C0  48 00 01 64 */	b lbl_80D4A824
lbl_80D4A6C4:
/* 80D4A6C4  2C 03 00 28 */	cmpwi r3, 0x28
/* 80D4A6C8  40 82 01 5C */	bne lbl_80D4A824
/* 80D4A6CC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80D4A6D0  2C 00 00 00 */	cmpwi r0, 0
/* 80D4A6D4  41 82 00 28 */	beq lbl_80D4A6FC
/* 80D4A6D8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80D4A6DC  4B 3F B0 20 */	b remove__18daNpcT_ActorMngr_cFv
/* 80D4A6E0  38 00 00 00 */	li r0, 0
/* 80D4A6E4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80D4A6E8  3C 60 80 D5 */	lis r3, lit_4199@ha
/* 80D4A6EC  C0 03 C1 08 */	lfs f0, lit_4199@l(r3)
/* 80D4A6F0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80D4A6F4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80D4A6F8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80D4A6FC:
/* 80D4A6FC  38 00 00 00 */	li r0, 0
/* 80D4A700  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80D4A704  48 00 01 20 */	b lbl_80D4A824
lbl_80D4A708:
/* 80D4A708  38 80 00 00 */	li r4, 0
/* 80D4A70C  39 9E 0E 5C */	addi r12, r30, 0xe5c
/* 80D4A710  4B 61 79 74 */	b __ptmf_scall
/* 80D4A714  60 00 00 00 */	nop 
/* 80D4A718  7C 7F 1B 78 */	mr r31, r3
/* 80D4A71C  48 00 01 08 */	b lbl_80D4A824
lbl_80D4A720:
/* 80D4A720  38 80 00 00 */	li r4, 0
/* 80D4A724  38 A0 00 00 */	li r5, 0
/* 80D4A728  38 C0 00 00 */	li r6, 0
/* 80D4A72C  38 E0 00 00 */	li r7, 0
/* 80D4A730  4B 40 15 48 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80D4A734  2C 03 00 00 */	cmpwi r3, 0
/* 80D4A738  41 82 00 EC */	beq lbl_80D4A824
/* 80D4A73C  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80D4A740  4B 3F AF C8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80D4A744  7C 7D 1B 78 */	mr r29, r3
/* 80D4A748  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80D4A74C  4B 3F AF BC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80D4A750  7C 63 E8 50 */	subf r3, r3, r29
/* 80D4A754  30 03 FF FF */	addic r0, r3, -1
/* 80D4A758  7C 00 19 10 */	subfe r0, r0, r3
/* 80D4A75C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D4A760  40 82 00 10 */	bne lbl_80D4A770
/* 80D4A764  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80D4A768  2C 00 00 02 */	cmpwi r0, 2
/* 80D4A76C  41 82 00 34 */	beq lbl_80D4A7A0
lbl_80D4A770:
/* 80D4A770  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80D4A774  4B 3F AF 88 */	b remove__18daNpcT_ActorMngr_cFv
/* 80D4A778  38 00 00 00 */	li r0, 0
/* 80D4A77C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80D4A780  3C 60 80 D5 */	lis r3, lit_4199@ha
/* 80D4A784  C0 03 C1 08 */	lfs f0, lit_4199@l(r3)
/* 80D4A788  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80D4A78C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80D4A790  38 00 00 02 */	li r0, 2
/* 80D4A794  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 80D4A798  38 00 00 01 */	li r0, 1
/* 80D4A79C  48 00 00 08 */	b lbl_80D4A7A4
lbl_80D4A7A0:
/* 80D4A7A0  38 00 00 00 */	li r0, 0
lbl_80D4A7A4:
/* 80D4A7A4  2C 00 00 00 */	cmpwi r0, 0
/* 80D4A7A8  41 82 00 2C */	beq lbl_80D4A7D4
/* 80D4A7AC  7F A3 EB 78 */	mr r3, r29
/* 80D4A7B0  4B 2C E5 30 */	b fopAc_IsActor__FPv
/* 80D4A7B4  2C 03 00 00 */	cmpwi r3, 0
/* 80D4A7B8  41 82 00 1C */	beq lbl_80D4A7D4
/* 80D4A7BC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80D4A7C0  7F A4 EB 78 */	mr r4, r29
/* 80D4A7C4  4B 3F AF 1C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80D4A7C8  3C 60 80 D5 */	lis r3, lit_4199@ha
/* 80D4A7CC  C0 03 C1 08 */	lfs f0, lit_4199@l(r3)
/* 80D4A7D0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_80D4A7D4:
/* 80D4A7D4  38 00 00 00 */	li r0, 0
/* 80D4A7D8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80D4A7DC  3B E0 00 01 */	li r31, 1
/* 80D4A7E0  48 00 00 44 */	b lbl_80D4A824
lbl_80D4A7E4:
/* 80D4A7E4  38 80 00 00 */	li r4, 0
/* 80D4A7E8  38 A0 00 00 */	li r5, 0
/* 80D4A7EC  38 C0 00 00 */	li r6, 0
/* 80D4A7F0  38 E0 00 00 */	li r7, 0
/* 80D4A7F4  4B 40 14 84 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80D4A7F8  2C 03 00 00 */	cmpwi r3, 0
/* 80D4A7FC  41 82 00 28 */	beq lbl_80D4A824
/* 80D4A800  3B E0 00 01 */	li r31, 1
/* 80D4A804  48 00 00 20 */	b lbl_80D4A824
lbl_80D4A808:
/* 80D4A808  38 80 00 00 */	li r4, 0
/* 80D4A80C  39 9E 0E 5C */	addi r12, r30, 0xe5c
/* 80D4A810  4B 61 78 74 */	b __ptmf_scall
/* 80D4A814  60 00 00 00 */	nop 
/* 80D4A818  7C 7F 1B 78 */	mr r31, r3
/* 80D4A81C  48 00 00 08 */	b lbl_80D4A824
lbl_80D4A820:
/* 80D4A820  3B E0 00 01 */	li r31, 1
lbl_80D4A824:
/* 80D4A824  7F E3 FB 78 */	mr r3, r31
/* 80D4A828  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4A82C  4B 61 79 FC */	b _restgpr_29
/* 80D4A830  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4A834  7C 08 03 A6 */	mtlr r0
/* 80D4A838  38 21 00 30 */	addi r1, r1, 0x30
/* 80D4A83C  4E 80 00 20 */	blr 
