lbl_80A98E60:
/* 80A98E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A98E64  7C 08 02 A6 */	mflr r0
/* 80A98E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A98E6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A98E70  93 C1 00 08 */	stw r30, 8(r1)
/* 80A98E74  7C 7F 1B 78 */	mr r31, r3
/* 80A98E78  38 7F 0F A8 */	addi r3, r31, 0xfa8
/* 80A98E7C  4B 6A C8 8C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A98E80  7C 7E 1B 78 */	mr r30, r3
/* 80A98E84  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A98E88  4B 6A C8 80 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A98E8C  88 1F 0F 86 */	lbz r0, 0xf86(r31)
/* 80A98E90  2C 00 00 02 */	cmpwi r0, 2
/* 80A98E94  41 82 00 C4 */	beq lbl_80A98F58
/* 80A98E98  40 80 01 04 */	bge lbl_80A98F9C
/* 80A98E9C  2C 00 00 01 */	cmpwi r0, 1
/* 80A98EA0  40 80 00 08 */	bge lbl_80A98EA8
/* 80A98EA4  48 00 00 F8 */	b lbl_80A98F9C
lbl_80A98EA8:
/* 80A98EA8  38 00 00 01 */	li r0, 1
/* 80A98EAC  98 1F 0F 85 */	stb r0, 0xf85(r31)
/* 80A98EB0  28 1E 00 00 */	cmplwi r30, 0
/* 80A98EB4  41 82 00 98 */	beq lbl_80A98F4C
/* 80A98EB8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A98EBC  4B 6A C8 4C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A98EC0  7C 63 F0 50 */	subf r3, r3, r30
/* 80A98EC4  30 03 FF FF */	addic r0, r3, -1
/* 80A98EC8  7C 00 19 10 */	subfe r0, r0, r3
/* 80A98ECC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A98ED0  40 82 00 10 */	bne lbl_80A98EE0
/* 80A98ED4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A98ED8  2C 00 00 02 */	cmpwi r0, 2
/* 80A98EDC  41 82 00 34 */	beq lbl_80A98F10
lbl_80A98EE0:
/* 80A98EE0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A98EE4  4B 6A C8 18 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A98EE8  38 00 00 00 */	li r0, 0
/* 80A98EEC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A98EF0  3C 60 80 AA */	lis r3, lit_4346@ha
/* 80A98EF4  C0 03 B9 30 */	lfs f0, lit_4346@l(r3)
/* 80A98EF8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A98EFC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A98F00  38 00 00 02 */	li r0, 2
/* 80A98F04  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 80A98F08  38 00 00 01 */	li r0, 1
/* 80A98F0C  48 00 00 08 */	b lbl_80A98F14
lbl_80A98F10:
/* 80A98F10  38 00 00 00 */	li r0, 0
lbl_80A98F14:
/* 80A98F14  2C 00 00 00 */	cmpwi r0, 0
/* 80A98F18  41 82 00 2C */	beq lbl_80A98F44
/* 80A98F1C  7F C3 F3 78 */	mr r3, r30
/* 80A98F20  4B 57 FD C0 */	b fopAc_IsActor__FPv
/* 80A98F24  2C 03 00 00 */	cmpwi r3, 0
/* 80A98F28  41 82 00 1C */	beq lbl_80A98F44
/* 80A98F2C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A98F30  7F C4 F3 78 */	mr r4, r30
/* 80A98F34  4B 6A C7 AC */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A98F38  3C 60 80 AA */	lis r3, lit_4346@ha
/* 80A98F3C  C0 03 B9 30 */	lfs f0, lit_4346@l(r3)
/* 80A98F40  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
lbl_80A98F44:
/* 80A98F44  38 00 00 00 */	li r0, 0
/* 80A98F48  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A98F4C:
/* 80A98F4C  38 00 00 00 */	li r0, 0
/* 80A98F50  98 1F 0F 86 */	stb r0, 0xf86(r31)
/* 80A98F54  48 00 00 48 */	b lbl_80A98F9C
lbl_80A98F58:
/* 80A98F58  38 00 00 00 */	li r0, 0
/* 80A98F5C  98 1F 0F 85 */	stb r0, 0xf85(r31)
/* 80A98F60  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A98F64  2C 00 00 00 */	cmpwi r0, 0
/* 80A98F68  41 82 00 28 */	beq lbl_80A98F90
/* 80A98F6C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A98F70  4B 6A C7 8C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A98F74  38 00 00 00 */	li r0, 0
/* 80A98F78  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A98F7C  3C 60 80 AA */	lis r3, lit_4346@ha
/* 80A98F80  C0 03 B9 30 */	lfs f0, lit_4346@l(r3)
/* 80A98F84  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A98F88  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A98F8C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A98F90:
/* 80A98F90  38 00 00 00 */	li r0, 0
/* 80A98F94  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A98F98  98 1F 0F 86 */	stb r0, 0xf86(r31)
lbl_80A98F9C:
/* 80A98F9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A98FA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A98FA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A98FA8  7C 08 03 A6 */	mtlr r0
/* 80A98FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A98FB0  4E 80 00 20 */	blr 
