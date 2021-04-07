lbl_80228B04:
/* 80228B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228B08  7C 08 02 A6 */	mflr r0
/* 80228B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80228B14  7C 7F 1B 78 */	mr r31, r3
/* 80228B18  3C 60 80 3D */	lis r3, __vt__Q28JMessage10TReference@ha /* 0x803C9C6C@ha */
/* 80228B1C  38 03 9C 6C */	addi r0, r3, __vt__Q28JMessage10TReference@l /* 0x803C9C6C@l */
/* 80228B20  90 1F 00 00 */	stw r0, 0(r31)
/* 80228B24  38 00 00 00 */	li r0, 0
/* 80228B28  90 1F 00 04 */	stw r0, 4(r31)
/* 80228B2C  3C 60 80 3C */	lis r3, __vt__19jmessage_tReference@ha /* 0x803C0AD4@ha */
/* 80228B30  38 03 0A D4 */	addi r0, r3, __vt__19jmessage_tReference@l /* 0x803C0AD4@l */
/* 80228B34  90 1F 00 00 */	stw r0, 0(r31)
/* 80228B38  38 60 00 30 */	li r3, 0x30
/* 80228B3C  48 0A 61 11 */	bl __nw__FUl
/* 80228B40  7C 60 1B 79 */	or. r0, r3, r3
/* 80228B44  41 82 00 2C */	beq lbl_80228B70
/* 80228B48  38 80 00 05 */	li r4, 5
/* 80228B4C  38 A0 00 02 */	li r5, 2
/* 80228B50  38 C0 00 03 */	li r6, 3
/* 80228B54  38 E0 00 02 */	li r7, 2
/* 80228B58  C0 22 B0 58 */	lfs f1, lit_4025(r2)
/* 80228B5C  C0 42 B0 5C */	lfs f2, lit_4026(r2)
/* 80228B60  39 00 00 00 */	li r8, 0
/* 80228B64  39 20 20 00 */	li r9, 0x2000
/* 80228B68  4B E0 94 DD */	bl __ct__9STControlFssssffss
/* 80228B6C  7C 60 1B 78 */	mr r0, r3
lbl_80228B70:
/* 80228B70  90 1F 00 08 */	stw r0, 8(r31)
/* 80228B74  80 7F 00 08 */	lwz r3, 8(r31)
/* 80228B78  38 80 00 05 */	li r4, 5
/* 80228B7C  38 A0 00 02 */	li r5, 2
/* 80228B80  38 C0 00 03 */	li r6, 3
/* 80228B84  38 E0 00 02 */	li r7, 2
/* 80228B88  C0 22 B0 58 */	lfs f1, lit_4025(r2)
/* 80228B8C  C0 42 B0 5C */	lfs f2, lit_4026(r2)
/* 80228B90  39 00 00 00 */	li r8, 0
/* 80228B94  39 20 08 00 */	li r9, 0x800
/* 80228B98  4B E0 94 F1 */	bl setWaitParm__9STControlFssssffss
/* 80228B9C  C0 22 B0 60 */	lfs f1, lit_4027(r2)
/* 80228BA0  D0 3F 04 14 */	stfs f1, 0x414(r31)
/* 80228BA4  D0 3F 04 18 */	stfs f1, 0x418(r31)
/* 80228BA8  D0 3F 04 1C */	stfs f1, 0x41c(r31)
/* 80228BAC  38 00 00 00 */	li r0, 0
/* 80228BB0  90 1F 05 C4 */	stw r0, 0x5c4(r31)
/* 80228BB4  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 80228BB8  D0 3F 04 20 */	stfs f1, 0x420(r31)
/* 80228BBC  D0 3F 04 24 */	stfs f1, 0x424(r31)
/* 80228BC0  D0 3F 04 28 */	stfs f1, 0x428(r31)
/* 80228BC4  D0 3F 04 34 */	stfs f1, 0x434(r31)
/* 80228BC8  D0 3F 04 38 */	stfs f1, 0x438(r31)
/* 80228BCC  D0 3F 04 3C */	stfs f1, 0x43c(r31)
/* 80228BD0  D0 3F 04 40 */	stfs f1, 0x440(r31)
/* 80228BD4  D0 3F 04 44 */	stfs f1, 0x444(r31)
/* 80228BD8  D0 3F 04 48 */	stfs f1, 0x448(r31)
/* 80228BDC  D0 3F 04 4C */	stfs f1, 0x44c(r31)
/* 80228BE0  D0 3F 04 4C */	stfs f1, 0x44c(r31)
/* 80228BE4  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 80228BE8  D0 1F 04 54 */	stfs f0, 0x454(r31)
/* 80228BEC  D0 3F 04 58 */	stfs f1, 0x458(r31)
/* 80228BF0  D0 3F 04 5C */	stfs f1, 0x45c(r31)
/* 80228BF4  D0 3F 04 60 */	stfs f1, 0x460(r31)
/* 80228BF8  D0 3F 04 64 */	stfs f1, 0x464(r31)
/* 80228BFC  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 80228C00  B0 1F 05 CE */	sth r0, 0x5ce(r31)
/* 80228C04  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 80228C08  B0 1F 05 D2 */	sth r0, 0x5d2(r31)
/* 80228C0C  B0 1F 05 DA */	sth r0, 0x5da(r31)
/* 80228C10  B0 1F 05 D6 */	sth r0, 0x5d6(r31)
/* 80228C14  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80228C18  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 80228C1C  98 1F 05 DC */	stb r0, 0x5dc(r31)
/* 80228C20  98 1F 05 DD */	stb r0, 0x5dd(r31)
/* 80228C24  7F E3 FB 78 */	mr r3, r31
/* 80228C28  48 00 0B E9 */	bl resetCharCountBuffer__19jmessage_tReferenceFv
/* 80228C2C  38 00 00 00 */	li r0, 0
/* 80228C30  98 1F 12 49 */	stb r0, 0x1249(r31)
/* 80228C34  98 1F 12 4A */	stb r0, 0x124a(r31)
/* 80228C38  98 1F 12 4B */	stb r0, 0x124b(r31)
/* 80228C3C  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 80228C40  98 1F 12 42 */	stb r0, 0x1242(r31)
/* 80228C44  98 1F 12 43 */	stb r0, 0x1243(r31)
/* 80228C48  98 1F 12 44 */	stb r0, 0x1244(r31)
/* 80228C4C  98 1F 12 4C */	stb r0, 0x124c(r31)
/* 80228C50  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 80228C54  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 80228C58  90 1F 05 C0 */	stw r0, 0x5c0(r31)
/* 80228C5C  98 1F 12 4E */	stb r0, 0x124e(r31)
/* 80228C60  98 1F 12 4F */	stb r0, 0x124f(r31)
/* 80228C64  98 1F 12 50 */	stb r0, 0x1250(r31)
/* 80228C68  98 1F 12 51 */	stb r0, 0x1251(r31)
/* 80228C6C  98 1F 12 52 */	stb r0, 0x1252(r31)
/* 80228C70  7F E3 FB 78 */	mr r3, r31
/* 80228C74  48 00 0B 3D */	bl resetCharactor__19jmessage_tReferenceFv
/* 80228C78  7F E3 FB 78 */	mr r3, r31
/* 80228C7C  48 00 0A C9 */	bl resetWord__19jmessage_tReferenceFv
/* 80228C80  38 00 00 00 */	li r0, 0
/* 80228C84  98 1F 12 74 */	stb r0, 0x1274(r31)
/* 80228C88  98 1F 12 75 */	stb r0, 0x1275(r31)
/* 80228C8C  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80228C90  98 1F 12 76 */	stb r0, 0x1276(r31)
/* 80228C94  B0 1F 06 30 */	sth r0, 0x630(r31)
/* 80228C98  B0 1F 06 32 */	sth r0, 0x632(r31)
/* 80228C9C  7F E3 FB 78 */	mr r3, r31
/* 80228CA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80228CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228CA8  7C 08 03 A6 */	mtlr r0
/* 80228CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80228CB0  4E 80 00 20 */	blr 
