/* 80288E2C 00285D6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80288E30 00285D70  7C 08 02 A6 */	mflr r0
/* 80288E34 00285D74  90 01 00 44 */	stw r0, 0x44(r1)
/* 80288E38 00285D78  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80288E3C 00285D7C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80288E40 00285D80  7C 7F 1B 78 */	mr r31, r3
/* 80288E44 00285D84  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80288E48 00285D88  90 01 00 0C */	stw r0, 0xc(r1)
/* 80288E4C 00285D8C  38 61 00 0C */	addi r3, r1, 0xc
/* 80288E50 00285D90  38 81 00 20 */	addi r4, r1, 0x20
/* 80288E54 00285D94  48 00 0B 69 */	bl JStudio_NS_stb_NS_data_NS_TParse_TSequence_NS_getData
/* 80288E58 00285D98  88 01 00 20 */	lbz r0, 0x20(r1)
/* 80288E5C 00285D9C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 80288E60 00285DA0  80 61 00 28 */	lwz r3, 0x28(r1)
/* 80288E64 00285DA4  83 C1 00 2C */	lwz r30, 0x2c(r1)
/* 80288E68 00285DA8  93 DF 00 28 */	stw r30, 0x28(r31)
/* 80288E6C 00285DAC  2C 00 00 03 */	cmpwi r0, 3
/* 80288E70 00285DB0  41 82 00 4C */	beq lbl_80288EBC
/* 80288E74 00285DB4  40 80 00 14 */	bge lbl_80288E88
/* 80288E78 00285DB8  2C 00 00 01 */	cmpwi r0, 1
/* 80288E7C 00285DBC  41 82 00 24 */	beq lbl_80288EA0
/* 80288E80 00285DC0  40 80 00 34 */	bge lbl_80288EB4
/* 80288E84 00285DC4  48 00 00 E4 */	b lbl_80288F68
lbl_80288E88:
/* 80288E88 00285DC8  2C 00 00 80 */	cmpwi r0, 0x80
/* 80288E8C 00285DCC  41 82 00 78 */	beq lbl_80288F04
/* 80288E90 00285DD0  40 80 00 D8 */	bge lbl_80288F68
/* 80288E94 00285DD4  2C 00 00 05 */	cmpwi r0, 5
/* 80288E98 00285DD8  40 80 00 D0 */	bge lbl_80288F68
/* 80288E9C 00285DDC  48 00 00 44 */	b lbl_80288EE0
lbl_80288EA0:
/* 80288EA0 00285DE0  7F E3 FB 78 */	mr r3, r31
/* 80288EA4 00285DE4  54 A4 86 3E */	rlwinm r4, r5, 0x10, 0x18, 0x1f
/* 80288EA8 00285DE8  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 80288EAC 00285DEC  4B FF FC CD */	bl setFlag_operation__Q37JStudio3stb7TObjectFUci
/* 80288EB0 00285DF0  48 00 00 B8 */	b lbl_80288F68
lbl_80288EB4:
/* 80288EB4 00285DF4  90 BF 00 2C */	stw r5, 0x2c(r31)
/* 80288EB8 00285DF8  48 00 00 B0 */	b lbl_80288F68
lbl_80288EBC:
/* 80288EBC 00285DFC  7C A3 2B 78 */	mr r3, r5
/* 80288EC0 00285E00  54 A0 02 11 */	rlwinm. r0, r5, 0, 8, 8
/* 80288EC4 00285E04  41 82 00 0C */	beq lbl_80288ED0
/* 80288EC8 00285E08  80 02 BA D0 */	lwz r0, lbl_804554D0-_SDA2_BASE_(r2)
/* 80288ECC 00285E0C  7C A3 03 78 */	or r3, r5, r0
lbl_80288ED0:
/* 80288ED0 00285E10  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80288ED4 00285E14  7C 00 1A 14 */	add r0, r0, r3
/* 80288ED8 00285E18  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80288EDC 00285E1C  48 00 00 8C */	b lbl_80288F68
lbl_80288EE0:
/* 80288EE0 00285E20  7C A3 2B 78 */	mr r3, r5
/* 80288EE4 00285E24  54 A0 02 11 */	rlwinm. r0, r5, 0, 8, 8
/* 80288EE8 00285E28  41 82 00 0C */	beq lbl_80288EF4
/* 80288EEC 00285E2C  80 02 BA D0 */	lwz r0, lbl_804554D0-_SDA2_BASE_(r2)
/* 80288EF0 00285E30  7C A3 03 78 */	or r3, r5, r0
lbl_80288EF4:
/* 80288EF4 00285E34  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80288EF8 00285E38  7C 00 1A 14 */	add r0, r0, r3
/* 80288EFC 00285E3C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80288F00 00285E40  48 00 00 68 */	b lbl_80288F68
lbl_80288F04:
/* 80288F04 00285E44  38 00 00 00 */	li r0, 0
/* 80288F08 00285E48  90 01 00 08 */	stw r0, 8(r1)
/* 80288F0C 00285E4C  48 00 00 54 */	b lbl_80288F60
lbl_80288F10:
/* 80288F10 00285E50  90 61 00 08 */	stw r3, 8(r1)
/* 80288F14 00285E54  38 61 00 08 */	addi r3, r1, 8
/* 80288F18 00285E58  38 81 00 10 */	addi r4, r1, 0x10
/* 80288F1C 00285E5C  48 00 0A ED */	bl JStudio_NS_stb_NS_data_NS_TParse_TParagraph_NS_getData
/* 80288F20 00285E60  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80288F24 00285E64  28 04 00 FF */	cmplwi r4, 0xff
/* 80288F28 00285E68  41 81 00 18 */	bgt lbl_80288F40
/* 80288F2C 00285E6C  7F E3 FB 78 */	mr r3, r31
/* 80288F30 00285E70  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80288F34 00285E74  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80288F38 00285E78  48 00 00 49 */	bl process_paragraph_reserved___Q37JStudio3stb7TObjectFUlPCvUl
/* 80288F3C 00285E7C  48 00 00 20 */	b lbl_80288F5C
lbl_80288F40:
/* 80288F40 00285E80  7F E3 FB 78 */	mr r3, r31
/* 80288F44 00285E84  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80288F48 00285E88  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80288F4C 00285E8C  81 9F 00 08 */	lwz r12, 8(r31)
/* 80288F50 00285E90  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80288F54 00285E94  7D 89 03 A6 */	mtctr r12
/* 80288F58 00285E98  4E 80 04 21 */	bctrl 
lbl_80288F5C:
/* 80288F5C 00285E9C  80 61 00 1C */	lwz r3, 0x1c(r1)
lbl_80288F60:
/* 80288F60 00285EA0  7C 03 F0 40 */	cmplw r3, r30
/* 80288F64 00285EA4  41 80 FF AC */	blt lbl_80288F10
lbl_80288F68:
/* 80288F68 00285EA8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80288F6C 00285EAC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80288F70 00285EB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80288F74 00285EB4  7C 08 03 A6 */	mtlr r0
/* 80288F78 00285EB8  38 21 00 40 */	addi r1, r1, 0x40
/* 80288F7C 00285EBC  4E 80 00 20 */	blr 