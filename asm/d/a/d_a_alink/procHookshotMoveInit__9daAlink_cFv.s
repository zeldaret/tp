lbl_8010BC08:
/* 8010BC08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010BC0C  7C 08 02 A6 */	mflr r0
/* 8010BC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010BC14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010BC18  7C 7F 1B 78 */	mr r31, r3
/* 8010BC1C  38 80 00 C5 */	li r4, 0xc5
/* 8010BC20  4B FB 71 85 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010BC24  2C 03 00 00 */	cmpwi r3, 0
/* 8010BC28  40 82 00 0C */	bne lbl_8010BC34
/* 8010BC2C  38 60 00 00 */	li r3, 0
/* 8010BC30  48 00 00 60 */	b lbl_8010BC90
lbl_8010BC34:
/* 8010BC34  7F E3 FB 78 */	mr r3, r31
/* 8010BC38  4B FA 7C CD */	bl checkZeroSpeedF__9daAlink_cCFv
/* 8010BC3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010BC40  41 82 00 10 */	beq lbl_8010BC50
/* 8010BC44  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8010BC48  60 00 00 01 */	ori r0, r0, 1
/* 8010BC4C  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_8010BC50:
/* 8010BC50  7F E3 FB 78 */	mr r3, r31
/* 8010BC54  38 80 00 00 */	li r4, 0
/* 8010BC58  4B FF D4 95 */	bl initHookshotUpperAnimeSpeed__9daAlink_cFi
/* 8010BC5C  2C 03 00 00 */	cmpwi r3, 0
/* 8010BC60  41 82 00 18 */	beq lbl_8010BC78
/* 8010BC64  7F E3 FB 78 */	mr r3, r31
/* 8010BC68  3C 80 80 39 */	lis r4, m__22daAlinkHIO_hookshot_c0@ha
/* 8010BC6C  38 84 E9 C0 */	addi r4, r4, m__22daAlinkHIO_hookshot_c0@l
/* 8010BC70  C0 24 00 44 */	lfs f1, 0x44(r4)
/* 8010BC74  4B FA 2D FD */	bl setBlendAtnMoveAnime__9daAlink_cFf
lbl_8010BC78:
/* 8010BC78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010BC7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010BC80  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010BC84  60 00 40 00 */	ori r0, r0, 0x4000
/* 8010BC88  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8010BC8C  38 60 00 01 */	li r3, 1
lbl_8010BC90:
/* 8010BC90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010BC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010BC98  7C 08 03 A6 */	mtlr r0
/* 8010BC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8010BCA0  4E 80 00 20 */	blr 
