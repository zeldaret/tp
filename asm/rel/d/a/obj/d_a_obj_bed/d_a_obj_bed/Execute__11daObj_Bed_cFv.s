lbl_80BADCB4:
/* 80BADCB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BADCB8  7C 08 02 A6 */	mflr r0
/* 80BADCBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BADCC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BADCC4  7C 7F 1B 78 */	mr r31, r3
/* 80BADCC8  38 7F 05 78 */	addi r3, r31, 0x578
/* 80BADCCC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BADCD0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BADCD4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BADCD8  4B 4C 8D D5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80BADCDC  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 80BADCE0  90 1F 07 90 */	stw r0, 0x790(r31)
/* 80BADCE4  80 1F 06 58 */	lwz r0, 0x658(r31)
/* 80BADCE8  90 1F 07 94 */	stw r0, 0x794(r31)
/* 80BADCEC  80 1F 06 5C */	lwz r0, 0x65c(r31)
/* 80BADCF0  90 1F 07 98 */	stw r0, 0x798(r31)
/* 80BADCF4  88 1F 06 60 */	lbz r0, 0x660(r31)
/* 80BADCF8  98 1F 07 9C */	stb r0, 0x79c(r31)
/* 80BADCFC  A0 1F 06 68 */	lhz r0, 0x668(r31)
/* 80BADD00  B0 1F 07 A4 */	sth r0, 0x7a4(r31)
/* 80BADD04  A0 1F 06 6A */	lhz r0, 0x66a(r31)
/* 80BADD08  B0 1F 07 A6 */	sth r0, 0x7a6(r31)
/* 80BADD0C  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 80BADD10  90 1F 07 A8 */	stw r0, 0x7a8(r31)
/* 80BADD14  80 1F 06 70 */	lwz r0, 0x670(r31)
/* 80BADD18  90 1F 07 AC */	stw r0, 0x7ac(r31)
/* 80BADD1C  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80BADD20  D0 1F 07 B4 */	stfs f0, 0x7b4(r31)
/* 80BADD24  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 80BADD28  D0 1F 07 B8 */	stfs f0, 0x7b8(r31)
/* 80BADD2C  C0 1F 06 80 */	lfs f0, 0x680(r31)
/* 80BADD30  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 80BADD34  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 80BADD38  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 80BADD3C  C0 1F 06 88 */	lfs f0, 0x688(r31)
/* 80BADD40  D0 1F 07 C4 */	stfs f0, 0x7c4(r31)
/* 80BADD44  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 80BADD48  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 80BADD4C  C0 1F 06 10 */	lfs f0, 0x610(r31)
/* 80BADD50  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 80BADD54  3C 60 80 BB */	lis r3, lit_3905@ha /* 0x80BAE184@ha */
/* 80BADD58  C0 23 E1 84 */	lfs f1, lit_3905@l(r3)  /* 0x80BAE184@l */
/* 80BADD5C  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 80BADD60  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BADD64  41 82 00 14 */	beq lbl_80BADD78
/* 80BADD68  7F E3 FB 78 */	mr r3, r31
/* 80BADD6C  48 00 01 C9 */	bl setEnvTevColor__11daObj_Bed_cFv
/* 80BADD70  7F E3 FB 78 */	mr r3, r31
/* 80BADD74  48 00 02 1D */	bl setRoomNo__11daObj_Bed_cFv
lbl_80BADD78:
/* 80BADD78  7F E3 FB 78 */	mr r3, r31
/* 80BADD7C  48 00 02 55 */	bl setMtx__11daObj_Bed_cFv
/* 80BADD80  80 1F 07 FC */	lwz r0, 0x7fc(r31)
/* 80BADD84  28 00 00 00 */	cmplwi r0, 0
/* 80BADD88  41 82 00 1C */	beq lbl_80BADDA4
/* 80BADD8C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80BADD90  38 63 00 24 */	addi r3, r3, 0x24
/* 80BADD94  38 9F 07 CC */	addi r4, r31, 0x7cc
/* 80BADD98  4B 79 87 19 */	bl PSMTXCopy
/* 80BADD9C  80 7F 07 FC */	lwz r3, 0x7fc(r31)
/* 80BADDA0  4B 4C DC 21 */	bl Move__4dBgWFv
lbl_80BADDA4:
/* 80BADDA4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BADDA8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80BADDAC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BADDB0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80BADDB4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BADDB8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80BADDBC  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 80BADDC0  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80BADDC4  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80BADDC8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80BADDCC  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 80BADDD0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80BADDD4  38 00 00 00 */	li r0, 0
/* 80BADDD8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80BADDDC  38 60 00 01 */	li r3, 1
/* 80BADDE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BADDE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BADDE8  7C 08 03 A6 */	mtlr r0
/* 80BADDEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BADDF0  4E 80 00 20 */	blr 
