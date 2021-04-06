lbl_8074E694:
/* 8074E694  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8074E698  7C 08 02 A6 */	mflr r0
/* 8074E69C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8074E6A0  39 61 00 30 */	addi r11, r1, 0x30
/* 8074E6A4  4B C1 3B 39 */	bl _savegpr_29
/* 8074E6A8  7C 7E 1B 78 */	mr r30, r3
/* 8074E6AC  3C 80 80 75 */	lis r4, lit_3917@ha /* 0x807576FC@ha */
/* 8074E6B0  3B E4 76 FC */	addi r31, r4, lit_3917@l /* 0x807576FC@l */
/* 8074E6B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074E6B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074E6BC  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 8074E6C0  38 00 00 0A */	li r0, 0xa
/* 8074E6C4  B0 03 07 54 */	sth r0, 0x754(r3)
/* 8074E6C8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8074E6CC  D0 23 05 2C */	stfs f1, 0x52c(r3)
/* 8074E6D0  80 03 05 B4 */	lwz r0, 0x5b4(r3)
/* 8074E6D4  2C 00 00 01 */	cmpwi r0, 1
/* 8074E6D8  41 82 00 9C */	beq lbl_8074E774
/* 8074E6DC  40 80 00 10 */	bge lbl_8074E6EC
/* 8074E6E0  2C 00 00 00 */	cmpwi r0, 0
/* 8074E6E4  40 80 00 14 */	bge lbl_8074E6F8
/* 8074E6E8  48 00 03 6C */	b lbl_8074EA54
lbl_8074E6EC:
/* 8074E6EC  2C 00 00 03 */	cmpwi r0, 3
/* 8074E6F0  40 80 03 64 */	bge lbl_8074EA54
/* 8074E6F4  48 00 02 88 */	b lbl_8074E97C
lbl_8074E6F8:
/* 8074E6F8  38 80 00 FF */	li r4, 0xff
/* 8074E6FC  4B FF DE F1 */	bl mArg0Check__FP10e_po_classs
/* 8074E700  2C 03 00 02 */	cmpwi r3, 2
/* 8074E704  40 82 00 18 */	bne lbl_8074E71C
/* 8074E708  38 00 00 00 */	li r0, 0
/* 8074E70C  3C 60 80 75 */	lis r3, struct_80757AD4+0x6@ha /* 0x80757ADA@ha */
/* 8074E710  B0 03 7A DA */	sth r0, struct_80757AD4+0x6@l(r3)  /* 0x80757ADA@l */
/* 8074E714  38 00 00 03 */	li r0, 3
/* 8074E718  98 1E 05 BC */	stb r0, 0x5bc(r30)
lbl_8074E71C:
/* 8074E71C  7F C3 F3 78 */	mr r3, r30
/* 8074E720  38 80 00 0D */	li r4, 0xd
/* 8074E724  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8074E728  38 A0 00 00 */	li r5, 0
/* 8074E72C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8074E730  4B FF DF 31 */	bl anm_init__FP10e_po_classifUcf
/* 8074E734  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700CF@ha */
/* 8074E738  38 03 00 CF */	addi r0, r3, 0x00CF /* 0x000700CF@l */
/* 8074E73C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8074E740  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 8074E744  38 81 00 0C */	addi r4, r1, 0xc
/* 8074E748  38 A0 FF FF */	li r5, -1
/* 8074E74C  81 9E 05 F8 */	lwz r12, 0x5f8(r30)
/* 8074E750  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074E754  7D 89 03 A6 */	mtctr r12
/* 8074E758  4E 80 04 21 */	bctrl 
/* 8074E75C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8074E760  38 03 00 01 */	addi r0, r3, 1
/* 8074E764  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8074E768  38 00 00 00 */	li r0, 0
/* 8074E76C  B0 1E 07 DE */	sth r0, 0x7de(r30)
/* 8074E770  48 00 02 E4 */	b lbl_8074EA54
lbl_8074E774:
/* 8074E774  80 1E 05 E4 */	lwz r0, 0x5e4(r30)
/* 8074E778  2C 00 00 0F */	cmpwi r0, 0xf
/* 8074E77C  41 82 00 0C */	beq lbl_8074E788
/* 8074E780  2C 00 00 0D */	cmpwi r0, 0xd
/* 8074E784  40 82 00 4C */	bne lbl_8074E7D0
lbl_8074E788:
/* 8074E788  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8074E78C  38 80 00 01 */	li r4, 1
/* 8074E790  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8074E794  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8074E798  40 82 00 18 */	bne lbl_8074E7B0
/* 8074E79C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8074E7A0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074E7A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8074E7A8  41 82 00 08 */	beq lbl_8074E7B0
/* 8074E7AC  38 80 00 00 */	li r4, 0
lbl_8074E7B0:
/* 8074E7B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8074E7B4  41 82 00 1C */	beq lbl_8074E7D0
/* 8074E7B8  7F C3 F3 78 */	mr r3, r30
/* 8074E7BC  38 80 00 10 */	li r4, 0x10
/* 8074E7C0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8074E7C4  38 A0 00 02 */	li r5, 2
/* 8074E7C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8074E7CC  4B FF DE 95 */	bl anm_init__FP10e_po_classifUcf
lbl_8074E7D0:
/* 8074E7D0  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8074E7D4  2C 00 00 00 */	cmpwi r0, 0
/* 8074E7D8  40 81 00 10 */	ble lbl_8074E7E8
/* 8074E7DC  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8074E7E0  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8074E7E4  41 82 01 2C */	beq lbl_8074E910
lbl_8074E7E8:
/* 8074E7E8  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8074E7EC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8074E7F0  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 8074E7F4  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 8074E7F8  38 03 FF FC */	addi r0, r3, -4
/* 8074E7FC  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8074E800  7F C3 F3 78 */	mr r3, r30
/* 8074E804  38 80 00 FF */	li r4, 0xff
/* 8074E808  4B FF DD E5 */	bl mArg0Check__FP10e_po_classs
/* 8074E80C  2C 03 00 02 */	cmpwi r3, 2
/* 8074E810  40 82 00 10 */	bne lbl_8074E820
/* 8074E814  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8074E818  3C 60 80 75 */	lis r3, mRollHp@ha /* 0x80757AE0@ha */
/* 8074E81C  B0 03 7A E0 */	sth r0, mRollHp@l(r3)  /* 0x80757AE0@l */
lbl_8074E820:
/* 8074E820  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8074E824  2C 00 00 01 */	cmpwi r0, 1
/* 8074E828  41 81 00 7C */	bgt lbl_8074E8A4
/* 8074E82C  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8074E830  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8074E834  90 1D 05 78 */	stw r0, 0x578(r29)
/* 8074E838  38 00 00 0C */	li r0, 0xc
/* 8074E83C  B0 1E 07 42 */	sth r0, 0x742(r30)
/* 8074E840  38 00 00 00 */	li r0, 0
/* 8074E844  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8074E848  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8074E84C  7F C3 F3 78 */	mr r3, r30
/* 8074E850  38 80 00 FF */	li r4, 0xff
/* 8074E854  4B FF DD 99 */	bl mArg0Check__FP10e_po_classs
/* 8074E858  2C 03 00 02 */	cmpwi r3, 2
/* 8074E85C  40 82 00 10 */	bne lbl_8074E86C
/* 8074E860  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8074E864  3C 60 80 75 */	lis r3, mRollHp@ha /* 0x80757AE0@ha */
/* 8074E868  B0 03 7A E0 */	sth r0, mRollHp@l(r3)  /* 0x80757AE0@l */
lbl_8074E86C:
/* 8074E86C  38 00 00 03 */	li r0, 3
/* 8074E870  98 1E 0B 62 */	stb r0, 0xb62(r30)
/* 8074E874  38 00 00 05 */	li r0, 5
/* 8074E878  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 8074E87C  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
/* 8074E880  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 8074E884  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8074E888  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8074E88C  38 A0 00 1F */	li r5, 0x1f
/* 8074E890  81 9E 05 F8 */	lwz r12, 0x5f8(r30)
/* 8074E894  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8074E898  7D 89 03 A6 */	mtctr r12
/* 8074E89C  4E 80 04 21 */	bctrl 
/* 8074E8A0  48 00 01 B4 */	b lbl_8074EA54
lbl_8074E8A4:
/* 8074E8A4  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 8074E8A8  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8074E8AC  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8074E8B0  38 A0 00 1E */	li r5, 0x1e
/* 8074E8B4  81 9E 05 F8 */	lwz r12, 0x5f8(r30)
/* 8074E8B8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8074E8BC  7D 89 03 A6 */	mtctr r12
/* 8074E8C0  4E 80 04 21 */	bctrl 
/* 8074E8C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700CF@ha */
/* 8074E8C8  38 03 00 CF */	addi r0, r3, 0x00CF /* 0x000700CF@l */
/* 8074E8CC  90 01 00 08 */	stw r0, 8(r1)
/* 8074E8D0  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 8074E8D4  38 81 00 08 */	addi r4, r1, 8
/* 8074E8D8  38 A0 FF FF */	li r5, -1
/* 8074E8DC  81 9E 05 F8 */	lwz r12, 0x5f8(r30)
/* 8074E8E0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074E8E4  7D 89 03 A6 */	mtctr r12
/* 8074E8E8  4E 80 04 21 */	bctrl 
/* 8074E8EC  7F C3 F3 78 */	mr r3, r30
/* 8074E8F0  38 80 00 0F */	li r4, 0xf
/* 8074E8F4  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8074E8F8  38 A0 00 00 */	li r5, 0
/* 8074E8FC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8074E900  4B FF DD 61 */	bl anm_init__FP10e_po_classifUcf
/* 8074E904  A8 7E 07 DE */	lha r3, 0x7de(r30)
/* 8074E908  38 03 00 01 */	addi r0, r3, 1
/* 8074E90C  B0 1E 07 DE */	sth r0, 0x7de(r30)
lbl_8074E910:
/* 8074E910  A8 1E 07 DE */	lha r0, 0x7de(r30)
/* 8074E914  2C 00 00 03 */	cmpwi r0, 3
/* 8074E918  41 81 00 34 */	bgt lbl_8074E94C
/* 8074E91C  7F A3 EB 78 */	mr r3, r29
/* 8074E920  7F C4 F3 78 */	mr r4, r30
/* 8074E924  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8074E928  81 8C 01 E0 */	lwz r12, 0x1e0(r12)
/* 8074E92C  7D 89 03 A6 */	mtctr r12
/* 8074E930  4E 80 04 21 */	bctrl 
/* 8074E934  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8074E938  41 82 00 14 */	beq lbl_8074E94C
/* 8074E93C  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 8074E940  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8074E944  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074E948  40 80 01 0C */	bge lbl_8074EA54
lbl_8074E94C:
/* 8074E94C  7F C3 F3 78 */	mr r3, r30
/* 8074E950  38 80 00 0E */	li r4, 0xe
/* 8074E954  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8074E958  38 A0 00 00 */	li r5, 0
/* 8074E95C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8074E960  4B FF DD 01 */	bl anm_init__FP10e_po_classifUcf
/* 8074E964  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8074E968  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8074E96C  90 1D 05 78 */	stw r0, 0x578(r29)
/* 8074E970  38 00 00 02 */	li r0, 2
/* 8074E974  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8074E978  48 00 00 DC */	b lbl_8074EA54
lbl_8074E97C:
/* 8074E97C  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8074E980  38 80 00 01 */	li r4, 1
/* 8074E984  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8074E988  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8074E98C  40 82 00 14 */	bne lbl_8074E9A0
/* 8074E990  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074E994  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8074E998  41 82 00 08 */	beq lbl_8074E9A0
/* 8074E99C  38 80 00 00 */	li r4, 0
lbl_8074E9A0:
/* 8074E9A0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8074E9A4  41 82 00 B0 */	beq lbl_8074EA54
/* 8074E9A8  38 00 00 00 */	li r0, 0
/* 8074E9AC  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8074E9B0  7F C3 F3 78 */	mr r3, r30
/* 8074E9B4  38 80 00 FF */	li r4, 0xff
/* 8074E9B8  4B FF DC 35 */	bl mArg0Check__FP10e_po_classs
/* 8074E9BC  2C 03 00 02 */	cmpwi r3, 2
/* 8074E9C0  41 82 00 38 */	beq lbl_8074E9F8
/* 8074E9C4  38 00 00 03 */	li r0, 3
/* 8074E9C8  B0 1E 07 42 */	sth r0, 0x742(r30)
/* 8074E9CC  38 00 00 14 */	li r0, 0x14
/* 8074E9D0  B0 1E 07 4A */	sth r0, 0x74a(r30)
/* 8074E9D4  38 00 00 02 */	li r0, 2
/* 8074E9D8  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8074E9DC  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8074E9E0  4B B1 8F 75 */	bl cM_rndF__Ff
/* 8074E9E4  FC 00 08 1E */	fctiwz f0, f1
/* 8074E9E8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8074E9EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074E9F0  B0 1E 07 40 */	sth r0, 0x740(r30)
/* 8074E9F4  48 00 00 60 */	b lbl_8074EA54
lbl_8074E9F8:
/* 8074E9F8  7F C3 F3 78 */	mr r3, r30
/* 8074E9FC  38 80 00 FF */	li r4, 0xff
/* 8074EA00  4B FF DB ED */	bl mArg0Check__FP10e_po_classs
/* 8074EA04  2C 03 00 02 */	cmpwi r3, 2
/* 8074EA08  40 82 00 3C */	bne lbl_8074EA44
/* 8074EA0C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8074EA10  4B B1 8F 45 */	bl cM_rndF__Ff
/* 8074EA14  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8074EA18  EC 00 08 2A */	fadds f0, f0, f1
/* 8074EA1C  FC 00 00 1E */	fctiwz f0, f0
/* 8074EA20  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8074EA24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074EA28  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8074EA2C  3C 60 80 75 */	lis r3, struct_80757AD4+0x6@ha /* 0x80757ADA@ha */
/* 8074EA30  B4 03 7A DA */	sthu r0, struct_80757AD4+0x6@l(r3)  /* 0x80757ADA@l */
/* 8074EA34  2C 00 00 06 */	cmpwi r0, 6
/* 8074EA38  40 81 00 0C */	ble lbl_8074EA44
/* 8074EA3C  38 00 00 03 */	li r0, 3
/* 8074EA40  B0 03 00 00 */	sth r0, 0(r3)
lbl_8074EA44:
/* 8074EA44  38 00 00 00 */	li r0, 0
/* 8074EA48  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 8074EA4C  38 00 00 05 */	li r0, 5
/* 8074EA50  B0 1E 07 42 */	sth r0, 0x742(r30)
lbl_8074EA54:
/* 8074EA54  39 61 00 30 */	addi r11, r1, 0x30
/* 8074EA58  4B C1 37 D1 */	bl _restgpr_29
/* 8074EA5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8074EA60  7C 08 03 A6 */	mtlr r0
/* 8074EA64  38 21 00 30 */	addi r1, r1, 0x30
/* 8074EA68  4E 80 00 20 */	blr 
