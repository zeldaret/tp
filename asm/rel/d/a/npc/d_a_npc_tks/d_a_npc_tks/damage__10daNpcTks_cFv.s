lbl_80B18070:
/* 80B18070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B18074  7C 08 02 A6 */	mflr r0
/* 80B18078  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B1807C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B18080  7C 7F 1B 78 */	mr r31, r3
/* 80B18084  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B18088  2C 00 00 02 */	cmpwi r0, 2
/* 80B1808C  41 82 00 68 */	beq lbl_80B180F4
/* 80B18090  40 80 00 10 */	bge lbl_80B180A0
/* 80B18094  2C 00 00 00 */	cmpwi r0, 0
/* 80B18098  41 82 00 14 */	beq lbl_80B180AC
/* 80B1809C  48 00 01 3C */	b lbl_80B181D8
lbl_80B180A0:
/* 80B180A0  2C 00 00 04 */	cmpwi r0, 4
/* 80B180A4  40 80 01 34 */	bge lbl_80B181D8
/* 80B180A8  48 00 01 24 */	b lbl_80B181CC
lbl_80B180AC:
/* 80B180AC  38 80 00 0A */	li r4, 0xa
/* 80B180B0  3C A0 80 B2 */	lis r5, lit_5011@ha /* 0x80B1DE1C@ha */
/* 80B180B4  C0 25 DE 1C */	lfs f1, lit_5011@l(r5)  /* 0x80B1DE1C@l */
/* 80B180B8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B180BC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B180C0  7D 89 03 A6 */	mtctr r12
/* 80B180C4  4E 80 04 21 */	bctrl 
/* 80B180C8  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80B180CC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B180D0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80B180D4  38 00 00 01 */	li r0, 1
/* 80B180D8  98 1F 13 8A */	stb r0, 0x138a(r31)
/* 80B180DC  3C 60 80 B2 */	lis r3, lit_5011@ha /* 0x80B1DE1C@ha */
/* 80B180E0  C0 03 DE 1C */	lfs f0, lit_5011@l(r3)  /* 0x80B1DE1C@l */
/* 80B180E4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B180E8  38 00 00 02 */	li r0, 2
/* 80B180EC  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B180F0  48 00 00 E8 */	b lbl_80B181D8
lbl_80B180F4:
/* 80B180F4  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80B180F8  38 A0 00 01 */	li r5, 1
/* 80B180FC  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80B18100  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B18104  40 82 00 1C */	bne lbl_80B18120
/* 80B18108  3C 60 80 B2 */	lis r3, lit_5011@ha /* 0x80B1DE1C@ha */
/* 80B1810C  C0 23 DE 1C */	lfs f1, lit_5011@l(r3)  /* 0x80B1DE1C@l */
/* 80B18110  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80B18114  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B18118  41 82 00 08 */	beq lbl_80B18120
/* 80B1811C  38 A0 00 00 */	li r5, 0
lbl_80B18120:
/* 80B18120  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80B18124  41 82 00 8C */	beq lbl_80B181B0
/* 80B18128  3C 60 80 B2 */	lis r3, lit_5726@ha /* 0x80B1E3D8@ha */
/* 80B1812C  38 83 E3 D8 */	addi r4, r3, lit_5726@l /* 0x80B1E3D8@l */
/* 80B18130  80 64 00 00 */	lwz r3, 0(r4)
/* 80B18134  80 04 00 04 */	lwz r0, 4(r4)
/* 80B18138  90 61 00 08 */	stw r3, 8(r1)
/* 80B1813C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B18140  80 04 00 08 */	lwz r0, 8(r4)
/* 80B18144  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B18148  38 00 00 03 */	li r0, 3
/* 80B1814C  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B18150  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B18154  4B 84 9E C5 */	bl __ptmf_test
/* 80B18158  2C 03 00 00 */	cmpwi r3, 0
/* 80B1815C  41 82 00 14 */	beq lbl_80B18170
/* 80B18160  7F E3 FB 78 */	mr r3, r31
/* 80B18164  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B18168  4B 84 9F 1D */	bl __ptmf_scall
/* 80B1816C  60 00 00 00 */	nop 
lbl_80B18170:
/* 80B18170  38 00 00 00 */	li r0, 0
/* 80B18174  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B18178  80 61 00 08 */	lwz r3, 8(r1)
/* 80B1817C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B18180  90 7F 13 4C */	stw r3, 0x134c(r31)
/* 80B18184  90 1F 13 50 */	stw r0, 0x1350(r31)
/* 80B18188  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B1818C  90 1F 13 54 */	stw r0, 0x1354(r31)
/* 80B18190  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B18194  4B 84 9E 85 */	bl __ptmf_test
/* 80B18198  2C 03 00 00 */	cmpwi r3, 0
/* 80B1819C  41 82 00 14 */	beq lbl_80B181B0
/* 80B181A0  7F E3 FB 78 */	mr r3, r31
/* 80B181A4  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B181A8  4B 84 9E DD */	bl __ptmf_scall
/* 80B181AC  60 00 00 00 */	nop 
lbl_80B181B0:
/* 80B181B0  38 7F 0F F4 */	addi r3, r31, 0xff4
/* 80B181B4  4B 56 C2 AD */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80B181B8  28 03 00 00 */	cmplwi r3, 0
/* 80B181BC  41 82 00 1C */	beq lbl_80B181D8
/* 80B181C0  38 00 00 00 */	li r0, 0
/* 80B181C4  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B181C8  48 00 00 10 */	b lbl_80B181D8
lbl_80B181CC:
/* 80B181CC  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80B181D0  60 00 00 10 */	ori r0, r0, 0x10
/* 80B181D4  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80B181D8:
/* 80B181D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B181DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B181E0  7C 08 03 A6 */	mtlr r0
/* 80B181E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B181E8  4E 80 00 20 */	blr 
