lbl_80C7A97C:
/* 80C7A97C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7A980  7C 08 02 A6 */	mflr r0
/* 80C7A984  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7A988  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7A98C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C7A990  7C 7E 1B 78 */	mr r30, r3
/* 80C7A994  3C 60 80 C8 */	lis r3, cNullVec__6Z2Calc@ha
/* 80C7A998  3B E3 C7 78 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80C7A99C  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80C7A9A0  28 00 00 FF */	cmplwi r0, 0xff
/* 80C7A9A4  41 82 02 0C */	beq lbl_80C7ABB0
/* 80C7A9A8  3C 60 80 C8 */	lis r3, data_80C7CA8C@ha
/* 80C7A9AC  38 83 CA 8C */	addi r4, r3, data_80C7CA8C@l
/* 80C7A9B0  88 04 00 00 */	lbz r0, 0(r4)
/* 80C7A9B4  7C 00 07 75 */	extsb. r0, r0
/* 80C7A9B8  40 82 01 60 */	bne lbl_80C7AB18
/* 80C7A9BC  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 80C7A9C0  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 80C7A9C4  90 7F 01 58 */	stw r3, 0x158(r31)
/* 80C7A9C8  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80C7A9CC  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 80C7A9D0  90 1F 01 60 */	stw r0, 0x160(r31)
/* 80C7A9D4  38 7F 01 58 */	addi r3, r31, 0x158
/* 80C7A9D8  80 BF 00 BC */	lwz r5, 0xbc(r31)
/* 80C7A9DC  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80C7A9E0  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80C7A9E4  90 03 00 10 */	stw r0, 0x10(r3)
/* 80C7A9E8  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 80C7A9EC  90 03 00 14 */	stw r0, 0x14(r3)
/* 80C7A9F0  80 BF 00 C8 */	lwz r5, 0xc8(r31)
/* 80C7A9F4  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 80C7A9F8  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80C7A9FC  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80C7AA00  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 80C7AA04  90 03 00 20 */	stw r0, 0x20(r3)
/* 80C7AA08  80 BF 00 D4 */	lwz r5, 0xd4(r31)
/* 80C7AA0C  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80C7AA10  90 A3 00 24 */	stw r5, 0x24(r3)
/* 80C7AA14  90 03 00 28 */	stw r0, 0x28(r3)
/* 80C7AA18  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 80C7AA1C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80C7AA20  80 BF 00 E0 */	lwz r5, 0xe0(r31)
/* 80C7AA24  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 80C7AA28  90 A3 00 30 */	stw r5, 0x30(r3)
/* 80C7AA2C  90 03 00 34 */	stw r0, 0x34(r3)
/* 80C7AA30  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 80C7AA34  90 03 00 38 */	stw r0, 0x38(r3)
/* 80C7AA38  80 BF 00 EC */	lwz r5, 0xec(r31)
/* 80C7AA3C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80C7AA40  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 80C7AA44  90 03 00 40 */	stw r0, 0x40(r3)
/* 80C7AA48  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 80C7AA4C  90 03 00 44 */	stw r0, 0x44(r3)
/* 80C7AA50  80 BF 00 F8 */	lwz r5, 0xf8(r31)
/* 80C7AA54  80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 80C7AA58  90 A3 00 48 */	stw r5, 0x48(r3)
/* 80C7AA5C  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80C7AA60  80 1F 01 00 */	lwz r0, 0x100(r31)
/* 80C7AA64  90 03 00 50 */	stw r0, 0x50(r3)
/* 80C7AA68  80 BF 01 04 */	lwz r5, 0x104(r31)
/* 80C7AA6C  80 1F 01 08 */	lwz r0, 0x108(r31)
/* 80C7AA70  90 A3 00 54 */	stw r5, 0x54(r3)
/* 80C7AA74  90 03 00 58 */	stw r0, 0x58(r3)
/* 80C7AA78  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 80C7AA7C  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80C7AA80  80 BF 01 10 */	lwz r5, 0x110(r31)
/* 80C7AA84  80 1F 01 14 */	lwz r0, 0x114(r31)
/* 80C7AA88  90 A3 00 60 */	stw r5, 0x60(r3)
/* 80C7AA8C  90 03 00 64 */	stw r0, 0x64(r3)
/* 80C7AA90  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 80C7AA94  90 03 00 68 */	stw r0, 0x68(r3)
/* 80C7AA98  80 BF 01 1C */	lwz r5, 0x11c(r31)
/* 80C7AA9C  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 80C7AAA0  90 A3 00 6C */	stw r5, 0x6c(r3)
/* 80C7AAA4  90 03 00 70 */	stw r0, 0x70(r3)
/* 80C7AAA8  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 80C7AAAC  90 03 00 74 */	stw r0, 0x74(r3)
/* 80C7AAB0  80 BF 01 28 */	lwz r5, 0x128(r31)
/* 80C7AAB4  80 1F 01 2C */	lwz r0, 0x12c(r31)
/* 80C7AAB8  90 A3 00 78 */	stw r5, 0x78(r3)
/* 80C7AABC  90 03 00 7C */	stw r0, 0x7c(r3)
/* 80C7AAC0  80 1F 01 30 */	lwz r0, 0x130(r31)
/* 80C7AAC4  90 03 00 80 */	stw r0, 0x80(r3)
/* 80C7AAC8  80 BF 01 34 */	lwz r5, 0x134(r31)
/* 80C7AACC  80 1F 01 38 */	lwz r0, 0x138(r31)
/* 80C7AAD0  90 A3 00 84 */	stw r5, 0x84(r3)
/* 80C7AAD4  90 03 00 88 */	stw r0, 0x88(r3)
/* 80C7AAD8  80 1F 01 3C */	lwz r0, 0x13c(r31)
/* 80C7AADC  90 03 00 8C */	stw r0, 0x8c(r3)
/* 80C7AAE0  80 BF 01 40 */	lwz r5, 0x140(r31)
/* 80C7AAE4  80 1F 01 44 */	lwz r0, 0x144(r31)
/* 80C7AAE8  90 A3 00 90 */	stw r5, 0x90(r3)
/* 80C7AAEC  90 03 00 94 */	stw r0, 0x94(r3)
/* 80C7AAF0  80 1F 01 48 */	lwz r0, 0x148(r31)
/* 80C7AAF4  90 03 00 98 */	stw r0, 0x98(r3)
/* 80C7AAF8  80 BF 01 4C */	lwz r5, 0x14c(r31)
/* 80C7AAFC  80 1F 01 50 */	lwz r0, 0x150(r31)
/* 80C7AB00  90 A3 00 9C */	stw r5, 0x9c(r3)
/* 80C7AB04  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 80C7AB08  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 80C7AB0C  90 03 00 A4 */	stw r0, 0xa4(r3)
/* 80C7AB10  38 00 00 01 */	li r0, 1
/* 80C7AB14  98 04 00 00 */	stb r0, 0(r4)
lbl_80C7AB18:
/* 80C7AB18  88 1E 05 DA */	lbz r0, 0x5da(r30)
/* 80C7AB1C  2C 00 00 02 */	cmpwi r0, 2
/* 80C7AB20  41 82 00 24 */	beq lbl_80C7AB44
/* 80C7AB24  40 80 00 28 */	bge lbl_80C7AB4C
/* 80C7AB28  2C 00 00 01 */	cmpwi r0, 1
/* 80C7AB2C  40 80 00 0C */	bge lbl_80C7AB38
/* 80C7AB30  48 00 00 1C */	b lbl_80C7AB4C
/* 80C7AB34  48 00 00 18 */	b lbl_80C7AB4C
lbl_80C7AB38:
/* 80C7AB38  7F C3 F3 78 */	mr r3, r30
/* 80C7AB3C  48 00 00 8D */	bl executeType1__15daLv6TogeTrap_cFv
/* 80C7AB40  48 00 00 0C */	b lbl_80C7AB4C
lbl_80C7AB44:
/* 80C7AB44  7F C3 F3 78 */	mr r3, r30
/* 80C7AB48  48 00 0B 8D */	bl executeType2__15daLv6TogeTrap_cFv
lbl_80C7AB4C:
/* 80C7AB4C  7F C3 F3 78 */	mr r3, r30
/* 80C7AB50  88 1E 05 D8 */	lbz r0, 0x5d8(r30)
/* 80C7AB54  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C7AB58  39 9F 01 58 */	addi r12, r31, 0x158
/* 80C7AB5C  7D 8C 02 14 */	add r12, r12, r0
/* 80C7AB60  4B 6E 75 24 */	b __ptmf_scall
/* 80C7AB64  60 00 00 00 */	nop 
/* 80C7AB68  38 7E 07 88 */	addi r3, r30, 0x788
/* 80C7AB6C  4B 40 98 F4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C7AB70  28 03 00 00 */	cmplwi r3, 0
/* 80C7AB74  41 82 00 28 */	beq lbl_80C7AB9C
/* 80C7AB78  38 7E 07 88 */	addi r3, r30, 0x788
/* 80C7AB7C  4B 40 99 CC */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80C7AB80  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80C7AB84  3C 60 02 00 */	lis r3, 0x0200 /* 0x02000400@ha */
/* 80C7AB88  38 03 04 00 */	addi r0, r3, 0x0400 /* 0x02000400@l */
/* 80C7AB8C  7C 80 00 39 */	and. r0, r4, r0
/* 80C7AB90  41 82 00 0C */	beq lbl_80C7AB9C
/* 80C7AB94  7F C3 F3 78 */	mr r3, r30
/* 80C7AB98  48 00 13 41 */	bl init_modeBreak__15daLv6TogeTrap_cFv
lbl_80C7AB9C:
/* 80C7AB9C  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 80C7ABA0  2C 00 00 00 */	cmpwi r0, 0
/* 80C7ABA4  40 82 00 0C */	bne lbl_80C7ABB0
/* 80C7ABA8  7F C3 F3 78 */	mr r3, r30
/* 80C7ABAC  48 00 13 2D */	bl init_modeBreak__15daLv6TogeTrap_cFv
lbl_80C7ABB0:
/* 80C7ABB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7ABB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C7ABB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7ABBC  7C 08 03 A6 */	mtlr r0
/* 80C7ABC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7ABC4  4E 80 00 20 */	blr 
