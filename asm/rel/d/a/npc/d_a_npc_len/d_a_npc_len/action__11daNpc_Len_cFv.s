lbl_80A65878:
/* 80A65878  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6587C  7C 08 02 A6 */	mflr r0
/* 80A65880  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A65884  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A65888  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A6588C  7C 7F 1B 78 */	mr r31, r3
/* 80A65890  3B C0 00 00 */	li r30, 0
/* 80A65894  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80A65898  28 00 00 00 */	cmplwi r0, 0
/* 80A6589C  40 82 00 14 */	bne lbl_80A658B0
/* 80A658A0  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80A658A4  38 A0 FF FF */	li r5, -1
/* 80A658A8  4B 6E 51 98 */	b hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80A658AC  7C 7E 1B 78 */	mr r30, r3
lbl_80A658B0:
/* 80A658B0  28 1E 00 00 */	cmplwi r30, 0
/* 80A658B4  41 82 00 8C */	beq lbl_80A65940
/* 80A658B8  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A658BC  4B 61 EC 3C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80A658C0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80A658C4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A658C8  41 82 00 78 */	beq lbl_80A65940
/* 80A658CC  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A658D0  7F E4 FB 78 */	mr r4, r31
/* 80A658D4  7F C5 F3 78 */	mr r5, r30
/* 80A658D8  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80A658DC  4B 6E 24 F0 */	b setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80A658E0  7F E3 FB 78 */	mr r3, r31
/* 80A658E4  38 80 00 00 */	li r4, 0
/* 80A658E8  38 A0 00 11 */	li r5, 0x11
/* 80A658EC  38 C0 00 00 */	li r6, 0
/* 80A658F0  4B 6E 51 E0 */	b setDamage__8daNpcT_cFiii
/* 80A658F4  38 00 00 00 */	li r0, 0
/* 80A658F8  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80A658FC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A65900  2C 00 00 00 */	cmpwi r0, 0
/* 80A65904  41 82 00 28 */	beq lbl_80A6592C
/* 80A65908  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A6590C  4B 6D FD F0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A65910  38 00 00 00 */	li r0, 0
/* 80A65914  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A65918  3C 60 80 A7 */	lis r3, lit_4072@ha
/* 80A6591C  C0 03 8F 70 */	lfs f0, lit_4072@l(r3)
/* 80A65920  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A65924  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A65928  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A6592C:
/* 80A6592C  38 00 00 00 */	li r0, 0
/* 80A65930  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80A65934  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80A65938  38 00 00 01 */	li r0, 1
/* 80A6593C  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A65940:
/* 80A65940  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80A65944  2C 00 00 00 */	cmpwi r0, 0
/* 80A65948  41 82 00 64 */	beq lbl_80A659AC
/* 80A6594C  38 60 00 00 */	li r3, 0
/* 80A65950  38 80 00 00 */	li r4, 0
/* 80A65954  7C 88 23 78 */	mr r8, r4
/* 80A65958  7C 87 23 78 */	mr r7, r4
/* 80A6595C  7C 86 23 78 */	mr r6, r4
/* 80A65960  3C A0 80 A7 */	lis r5, lit_4072@ha
/* 80A65964  C0 05 8F 70 */	lfs f0, lit_4072@l(r5)
/* 80A65968  38 00 00 02 */	li r0, 2
/* 80A6596C  7C 09 03 A6 */	mtctr r0
lbl_80A65970:
/* 80A65970  7C BF 22 14 */	add r5, r31, r4
/* 80A65974  B1 05 0D 08 */	sth r8, 0xd08(r5)
/* 80A65978  B0 E5 0D 0A */	sth r7, 0xd0a(r5)
/* 80A6597C  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80A65980  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A65984  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A65988  38 63 00 04 */	addi r3, r3, 4
/* 80A6598C  38 84 00 06 */	addi r4, r4, 6
/* 80A65990  42 00 FF E0 */	bdnz lbl_80A65970
/* 80A65994  38 00 00 00 */	li r0, 0
/* 80A65998  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A6599C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A659A0  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A659A4  38 00 00 01 */	li r0, 1
/* 80A659A8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A659AC:
/* 80A659AC  38 7F 0F CC */	addi r3, r31, 0xfcc
/* 80A659B0  4B 8F C6 68 */	b __ptmf_test
/* 80A659B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A659B8  41 82 00 54 */	beq lbl_80A65A0C
/* 80A659BC  38 7F 0F D8 */	addi r3, r31, 0xfd8
/* 80A659C0  38 9F 0F CC */	addi r4, r31, 0xfcc
/* 80A659C4  4B 8F C6 84 */	b __ptmf_cmpr
/* 80A659C8  2C 03 00 00 */	cmpwi r3, 0
/* 80A659CC  40 82 00 1C */	bne lbl_80A659E8
/* 80A659D0  7F E3 FB 78 */	mr r3, r31
/* 80A659D4  38 80 00 00 */	li r4, 0
/* 80A659D8  39 9F 0F D8 */	addi r12, r31, 0xfd8
/* 80A659DC  4B 8F C6 A8 */	b __ptmf_scall
/* 80A659E0  60 00 00 00 */	nop 
/* 80A659E4  48 00 00 28 */	b lbl_80A65A0C
lbl_80A659E8:
/* 80A659E8  80 7F 0F CC */	lwz r3, 0xfcc(r31)
/* 80A659EC  80 1F 0F D0 */	lwz r0, 0xfd0(r31)
/* 80A659F0  90 61 00 08 */	stw r3, 8(r1)
/* 80A659F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A659F8  80 1F 0F D4 */	lwz r0, 0xfd4(r31)
/* 80A659FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A65A00  7F E3 FB 78 */	mr r3, r31
/* 80A65A04  38 81 00 08 */	addi r4, r1, 8
/* 80A65A08  48 00 06 29 */	bl setAction__11daNpc_Len_cFM11daNpc_Len_cFPCvPvPv_i
lbl_80A65A0C:
/* 80A65A0C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A65A10  4B 6D FC F8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A65A14  28 03 00 00 */	cmplwi r3, 0
/* 80A65A18  41 82 00 30 */	beq lbl_80A65A48
/* 80A65A1C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80A65A20  54 03 46 3E */	srwi r3, r0, 0x18
/* 80A65A24  28 03 00 FF */	cmplwi r3, 0xff
/* 80A65A28  38 00 FF FF */	li r0, -1
/* 80A65A2C  41 82 00 08 */	beq lbl_80A65A34
/* 80A65A30  7C 60 1B 78 */	mr r0, r3
lbl_80A65A34:
/* 80A65A34  2C 00 00 03 */	cmpwi r0, 3
/* 80A65A38  41 82 00 08 */	beq lbl_80A65A40
/* 80A65A3C  48 00 00 0C */	b lbl_80A65A48
lbl_80A65A40:
/* 80A65A40  38 00 00 04 */	li r0, 4
/* 80A65A44  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_80A65A48:
/* 80A65A48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A65A4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A65A50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A65A54  7C 08 03 A6 */	mtlr r0
/* 80A65A58  38 21 00 20 */	addi r1, r1, 0x20
/* 80A65A5C  4E 80 00 20 */	blr 
