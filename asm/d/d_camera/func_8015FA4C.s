lbl_8015FA4C:
/* 8015FA4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015FA50  7C 08 02 A6 */	mflr r0
/* 8015FA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015FA58  38 00 00 00 */	li r0, 0
/* 8015FA5C  A8 83 00 08 */	lha r4, 8(r3)
/* 8015FA60  2C 04 00 FD */	cmpwi r4, 0xfd
/* 8015FA64  41 82 00 08 */	beq lbl_8015FA6C
/* 8015FA68  40 82 00 08 */	bne lbl_8015FA70
lbl_8015FA6C:
/* 8015FA6C  38 00 00 01 */	li r0, 1
lbl_8015FA70:
/* 8015FA70  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8015FA74  41 82 00 4C */	beq lbl_8015FAC0
/* 8015FA78  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015FA7C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015FA80  80 04 5D 7C */	lwz r0, 0x5d7c(r4)
/* 8015FA84  60 00 00 02 */	ori r0, r0, 2
/* 8015FA88  90 04 5D 7C */	stw r0, 0x5d7c(r4)
/* 8015FA8C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8015FA90  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8015FA94  7D 89 03 A6 */	mtctr r12
/* 8015FA98  4E 80 04 21 */	bctrl 
/* 8015FA9C  28 03 00 00 */	cmplwi r3, 0
/* 8015FAA0  41 82 00 2C */	beq lbl_8015FACC
/* 8015FAA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015FAA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015FAAC  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 8015FAB0  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8015FAB4  64 00 01 00 */	oris r0, r0, 0x100
/* 8015FAB8  90 03 04 9C */	stw r0, 0x49c(r3)
/* 8015FABC  48 00 00 10 */	b lbl_8015FACC
lbl_8015FAC0:
/* 8015FAC0  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8015FAC4  64 00 01 00 */	oris r0, r0, 0x100
/* 8015FAC8  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_8015FACC:
/* 8015FACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015FAD0  7C 08 03 A6 */	mtlr r0
/* 8015FAD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8015FAD8  4E 80 00 20 */	blr 
