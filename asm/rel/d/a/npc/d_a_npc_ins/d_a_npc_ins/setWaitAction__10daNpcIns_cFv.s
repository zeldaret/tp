lbl_80A11D44:
/* 80A11D44  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A11D48  7C 08 02 A6 */	mflr r0
/* 80A11D4C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A11D50  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80A11D54  7C 7F 1B 78 */	mr r31, r3
/* 80A11D58  3C 60 80 A1 */	lis r3, cNullVec__6Z2Calc@ha
/* 80A11D5C  38 83 41 9C */	addi r4, r3, cNullVec__6Z2Calc@l
/* 80A11D60  88 1F 0E 21 */	lbz r0, 0xe21(r31)
/* 80A11D64  2C 00 00 01 */	cmpwi r0, 1
/* 80A11D68  41 82 00 C4 */	beq lbl_80A11E2C
/* 80A11D6C  40 80 00 10 */	bge lbl_80A11D7C
/* 80A11D70  2C 00 00 00 */	cmpwi r0, 0
/* 80A11D74  40 80 00 14 */	bge lbl_80A11D88
/* 80A11D78  48 00 01 F8 */	b lbl_80A11F70
lbl_80A11D7C:
/* 80A11D7C  2C 00 00 03 */	cmpwi r0, 3
/* 80A11D80  40 80 01 F0 */	bge lbl_80A11F70
/* 80A11D84  48 00 01 4C */	b lbl_80A11ED0
lbl_80A11D88:
/* 80A11D88  80 64 02 F0 */	lwz r3, 0x2f0(r4)
/* 80A11D8C  80 04 02 F4 */	lwz r0, 0x2f4(r4)
/* 80A11D90  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A11D94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A11D98  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 80A11D9C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A11DA0  38 00 00 03 */	li r0, 3
/* 80A11DA4  B0 1F 0E 1E */	sth r0, 0xe1e(r31)
/* 80A11DA8  38 7F 0D C8 */	addi r3, r31, 0xdc8
/* 80A11DAC  4B 95 02 6C */	b __ptmf_test
/* 80A11DB0  2C 03 00 00 */	cmpwi r3, 0
/* 80A11DB4  41 82 00 18 */	beq lbl_80A11DCC
/* 80A11DB8  7F E3 FB 78 */	mr r3, r31
/* 80A11DBC  38 80 00 00 */	li r4, 0
/* 80A11DC0  39 9F 0D C8 */	addi r12, r31, 0xdc8
/* 80A11DC4  4B 95 02 C0 */	b __ptmf_scall
/* 80A11DC8  60 00 00 00 */	nop 
lbl_80A11DCC:
/* 80A11DCC  80 7F 0D C8 */	lwz r3, 0xdc8(r31)
/* 80A11DD0  80 1F 0D CC */	lwz r0, 0xdcc(r31)
/* 80A11DD4  90 7F 0D D4 */	stw r3, 0xdd4(r31)
/* 80A11DD8  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 80A11DDC  80 1F 0D D0 */	lwz r0, 0xdd0(r31)
/* 80A11DE0  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 80A11DE4  38 00 00 00 */	li r0, 0
/* 80A11DE8  B0 1F 0E 1E */	sth r0, 0xe1e(r31)
/* 80A11DEC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80A11DF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A11DF4  90 7F 0D C8 */	stw r3, 0xdc8(r31)
/* 80A11DF8  90 1F 0D CC */	stw r0, 0xdcc(r31)
/* 80A11DFC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A11E00  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80A11E04  38 7F 0D C8 */	addi r3, r31, 0xdc8
/* 80A11E08  4B 95 02 10 */	b __ptmf_test
/* 80A11E0C  2C 03 00 00 */	cmpwi r3, 0
/* 80A11E10  41 82 01 60 */	beq lbl_80A11F70
/* 80A11E14  7F E3 FB 78 */	mr r3, r31
/* 80A11E18  38 80 00 00 */	li r4, 0
/* 80A11E1C  39 9F 0D C8 */	addi r12, r31, 0xdc8
/* 80A11E20  4B 95 02 64 */	b __ptmf_scall
/* 80A11E24  60 00 00 00 */	nop 
/* 80A11E28  48 00 01 48 */	b lbl_80A11F70
lbl_80A11E2C:
/* 80A11E2C  80 64 02 FC */	lwz r3, 0x2fc(r4)
/* 80A11E30  80 04 03 00 */	lwz r0, 0x300(r4)
/* 80A11E34  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A11E38  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A11E3C  80 04 03 04 */	lwz r0, 0x304(r4)
/* 80A11E40  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A11E44  38 00 00 03 */	li r0, 3
/* 80A11E48  B0 1F 0E 1E */	sth r0, 0xe1e(r31)
/* 80A11E4C  38 7F 0D C8 */	addi r3, r31, 0xdc8
/* 80A11E50  4B 95 01 C8 */	b __ptmf_test
/* 80A11E54  2C 03 00 00 */	cmpwi r3, 0
/* 80A11E58  41 82 00 18 */	beq lbl_80A11E70
/* 80A11E5C  7F E3 FB 78 */	mr r3, r31
/* 80A11E60  38 80 00 00 */	li r4, 0
/* 80A11E64  39 9F 0D C8 */	addi r12, r31, 0xdc8
/* 80A11E68  4B 95 02 1C */	b __ptmf_scall
/* 80A11E6C  60 00 00 00 */	nop 
lbl_80A11E70:
/* 80A11E70  80 7F 0D C8 */	lwz r3, 0xdc8(r31)
/* 80A11E74  80 1F 0D CC */	lwz r0, 0xdcc(r31)
/* 80A11E78  90 7F 0D D4 */	stw r3, 0xdd4(r31)
/* 80A11E7C  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 80A11E80  80 1F 0D D0 */	lwz r0, 0xdd0(r31)
/* 80A11E84  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 80A11E88  38 00 00 00 */	li r0, 0
/* 80A11E8C  B0 1F 0E 1E */	sth r0, 0xe1e(r31)
/* 80A11E90  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80A11E94  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80A11E98  90 7F 0D C8 */	stw r3, 0xdc8(r31)
/* 80A11E9C  90 1F 0D CC */	stw r0, 0xdcc(r31)
/* 80A11EA0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A11EA4  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80A11EA8  38 7F 0D C8 */	addi r3, r31, 0xdc8
/* 80A11EAC  4B 95 01 6C */	b __ptmf_test
/* 80A11EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80A11EB4  41 82 00 BC */	beq lbl_80A11F70
/* 80A11EB8  7F E3 FB 78 */	mr r3, r31
/* 80A11EBC  38 80 00 00 */	li r4, 0
/* 80A11EC0  39 9F 0D C8 */	addi r12, r31, 0xdc8
/* 80A11EC4  4B 95 01 C0 */	b __ptmf_scall
/* 80A11EC8  60 00 00 00 */	nop 
/* 80A11ECC  48 00 00 A4 */	b lbl_80A11F70
lbl_80A11ED0:
/* 80A11ED0  80 64 03 08 */	lwz r3, 0x308(r4)
/* 80A11ED4  80 04 03 0C */	lwz r0, 0x30c(r4)
/* 80A11ED8  90 61 00 08 */	stw r3, 8(r1)
/* 80A11EDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A11EE0  80 04 03 10 */	lwz r0, 0x310(r4)
/* 80A11EE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A11EE8  38 00 00 03 */	li r0, 3
/* 80A11EEC  B0 1F 0E 1E */	sth r0, 0xe1e(r31)
/* 80A11EF0  38 7F 0D C8 */	addi r3, r31, 0xdc8
/* 80A11EF4  4B 95 01 24 */	b __ptmf_test
/* 80A11EF8  2C 03 00 00 */	cmpwi r3, 0
/* 80A11EFC  41 82 00 18 */	beq lbl_80A11F14
/* 80A11F00  7F E3 FB 78 */	mr r3, r31
/* 80A11F04  38 80 00 00 */	li r4, 0
/* 80A11F08  39 9F 0D C8 */	addi r12, r31, 0xdc8
/* 80A11F0C  4B 95 01 78 */	b __ptmf_scall
/* 80A11F10  60 00 00 00 */	nop 
lbl_80A11F14:
/* 80A11F14  80 7F 0D C8 */	lwz r3, 0xdc8(r31)
/* 80A11F18  80 1F 0D CC */	lwz r0, 0xdcc(r31)
/* 80A11F1C  90 7F 0D D4 */	stw r3, 0xdd4(r31)
/* 80A11F20  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 80A11F24  80 1F 0D D0 */	lwz r0, 0xdd0(r31)
/* 80A11F28  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 80A11F2C  38 00 00 00 */	li r0, 0
/* 80A11F30  B0 1F 0E 1E */	sth r0, 0xe1e(r31)
/* 80A11F34  80 61 00 08 */	lwz r3, 8(r1)
/* 80A11F38  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A11F3C  90 7F 0D C8 */	stw r3, 0xdc8(r31)
/* 80A11F40  90 1F 0D CC */	stw r0, 0xdcc(r31)
/* 80A11F44  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A11F48  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80A11F4C  38 7F 0D C8 */	addi r3, r31, 0xdc8
/* 80A11F50  4B 95 00 C8 */	b __ptmf_test
/* 80A11F54  2C 03 00 00 */	cmpwi r3, 0
/* 80A11F58  41 82 00 18 */	beq lbl_80A11F70
/* 80A11F5C  7F E3 FB 78 */	mr r3, r31
/* 80A11F60  38 80 00 00 */	li r4, 0
/* 80A11F64  39 9F 0D C8 */	addi r12, r31, 0xdc8
/* 80A11F68  4B 95 01 1C */	b __ptmf_scall
/* 80A11F6C  60 00 00 00 */	nop 
lbl_80A11F70:
/* 80A11F70  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80A11F74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A11F78  7C 08 03 A6 */	mtlr r0
/* 80A11F7C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A11F80  4E 80 00 20 */	blr 
