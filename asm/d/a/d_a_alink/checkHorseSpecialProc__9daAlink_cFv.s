lbl_800EDD6C:
/* 800EDD6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EDD70  7C 08 02 A6 */	mflr r0
/* 800EDD74  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EDD78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EDD7C  93 C1 00 08 */	stw r30, 8(r1)
/* 800EDD80  7C 7E 1B 78 */	mr r30, r3
/* 800EDD84  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800EDD88  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800EDD8C  83 E4 5D B8 */	lwz r31, 0x5db8(r4)
/* 800EDD90  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800EDD94  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800EDD98  7D 89 03 A6 */	mtctr r12
/* 800EDD9C  4E 80 04 21 */	bctrl 
/* 800EDDA0  28 03 00 00 */	cmplwi r3, 0
/* 800EDDA4  40 82 00 0C */	bne lbl_800EDDB0
/* 800EDDA8  38 60 00 00 */	li r3, 0
/* 800EDDAC  48 00 00 C8 */	b lbl_800EDE74
lbl_800EDDB0:
/* 800EDDB0  80 1E 05 90 */	lwz r0, 0x590(r30)
/* 800EDDB4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800EDDB8  41 82 00 28 */	beq lbl_800EDDE0
/* 800EDDBC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800EDDC0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800EDDC4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800EDDC8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800EDDCC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800EDDD0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800EDDD4  7F C3 F3 78 */	mr r3, r30
/* 800EDDD8  4B FD 55 E1 */	bl procWaitInit__9daAlink_cFv
/* 800EDDDC  48 00 00 98 */	b lbl_800EDE74
lbl_800EDDE0:
/* 800EDDE0  88 9F 16 B4 */	lbz r4, 0x16b4(r31)
/* 800EDDE4  28 04 00 02 */	cmplwi r4, 2
/* 800EDDE8  41 82 00 28 */	beq lbl_800EDE10
/* 800EDDEC  38 60 00 00 */	li r3, 0
/* 800EDDF0  28 04 00 03 */	cmplwi r4, 3
/* 800EDDF4  40 82 00 14 */	bne lbl_800EDE08
/* 800EDDF8  A8 1F 17 20 */	lha r0, 0x1720(r31)
/* 800EDDFC  2C 00 00 00 */	cmpwi r0, 0
/* 800EDE00  40 82 00 08 */	bne lbl_800EDE08
/* 800EDE04  38 60 00 01 */	li r3, 1
lbl_800EDE08:
/* 800EDE08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EDE0C  41 82 00 28 */	beq lbl_800EDE34
lbl_800EDE10:
/* 800EDE10  80 1F 17 4C */	lwz r0, 0x174c(r31)
/* 800EDE14  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800EDE18  40 82 00 1C */	bne lbl_800EDE34
/* 800EDE1C  80 1F 17 44 */	lwz r0, 0x1744(r31)
/* 800EDE20  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800EDE24  40 82 00 10 */	bne lbl_800EDE34
/* 800EDE28  7F C3 F3 78 */	mr r3, r30
/* 800EDE2C  48 00 2E 41 */	bl procHorseTurnInit__9daAlink_cFv
/* 800EDE30  48 00 00 44 */	b lbl_800EDE74
lbl_800EDE34:
/* 800EDE34  28 04 00 04 */	cmplwi r4, 4
/* 800EDE38  40 82 00 10 */	bne lbl_800EDE48
/* 800EDE3C  7F C3 F3 78 */	mr r3, r30
/* 800EDE40  48 00 32 21 */	bl procHorseJumpInit__9daAlink_cFv
/* 800EDE44  48 00 00 30 */	b lbl_800EDE74
lbl_800EDE48:
/* 800EDE48  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800EDE4C  28 00 00 3C */	cmplwi r0, 0x3c
/* 800EDE50  41 82 00 20 */	beq lbl_800EDE70
/* 800EDE54  28 00 00 41 */	cmplwi r0, 0x41
/* 800EDE58  41 82 00 18 */	beq lbl_800EDE70
/* 800EDE5C  28 00 00 42 */	cmplwi r0, 0x42
/* 800EDE60  41 82 00 10 */	beq lbl_800EDE70
/* 800EDE64  80 1F 17 4C */	lwz r0, 0x174c(r31)
/* 800EDE68  60 00 00 10 */	ori r0, r0, 0x10
/* 800EDE6C  90 1F 17 4C */	stw r0, 0x174c(r31)
lbl_800EDE70:
/* 800EDE70  38 60 00 00 */	li r3, 0
lbl_800EDE74:
/* 800EDE74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EDE78  83 C1 00 08 */	lwz r30, 8(r1)
/* 800EDE7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EDE80  7C 08 03 A6 */	mtlr r0
/* 800EDE84  38 21 00 10 */	addi r1, r1, 0x10
/* 800EDE88  4E 80 00 20 */	blr 
