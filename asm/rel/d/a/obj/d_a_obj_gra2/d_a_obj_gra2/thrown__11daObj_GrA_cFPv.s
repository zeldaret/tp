lbl_80C0A018:
/* 80C0A018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C0A01C  7C 08 02 A6 */	mflr r0
/* 80C0A020  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C0A024  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C0A028  93 C1 00 08 */	stw r30, 8(r1)
/* 80C0A02C  7C 7E 1B 78 */	mr r30, r3
/* 80C0A030  3B E0 00 00 */	li r31, 0
/* 80C0A034  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C0A038  2C 00 00 01 */	cmpwi r0, 1
/* 80C0A03C  41 82 00 44 */	beq lbl_80C0A080
/* 80C0A040  40 80 00 10 */	bge lbl_80C0A050
/* 80C0A044  2C 00 00 00 */	cmpwi r0, 0
/* 80C0A048  40 80 00 14 */	bge lbl_80C0A05C
/* 80C0A04C  48 00 00 B0 */	b lbl_80C0A0FC
lbl_80C0A050:
/* 80C0A050  2C 00 00 03 */	cmpwi r0, 3
/* 80C0A054  40 80 00 A8 */	bge lbl_80C0A0FC
/* 80C0A058  48 00 00 9C */	b lbl_80C0A0F4
lbl_80C0A05C:
/* 80C0A05C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80C0A060  60 00 40 00 */	ori r0, r0, 0x4000
/* 80C0A064  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80C0A068  38 60 00 01 */	li r3, 1
/* 80C0A06C  90 7E 1F F0 */	stw r3, 0x1ff0(r30)
/* 80C0A070  38 00 00 00 */	li r0, 0
/* 80C0A074  B0 1E 20 54 */	sth r0, 0x2054(r30)
/* 80C0A078  90 7E 20 9C */	stw r3, 0x209c(r30)
/* 80C0A07C  48 00 00 80 */	b lbl_80C0A0FC
lbl_80C0A080:
/* 80C0A080  80 7E 1F F8 */	lwz r3, 0x1ff8(r30)
/* 80C0A084  2C 03 00 00 */	cmpwi r3, 0
/* 80C0A088  41 82 00 0C */	beq lbl_80C0A094
/* 80C0A08C  38 03 FF FF */	addi r0, r3, -1
/* 80C0A090  90 1E 1F F8 */	stw r0, 0x1ff8(r30)
lbl_80C0A094:
/* 80C0A094  80 1E 1F F0 */	lwz r0, 0x1ff0(r30)
/* 80C0A098  2C 00 00 03 */	cmpwi r0, 3
/* 80C0A09C  41 82 00 3C */	beq lbl_80C0A0D8
/* 80C0A0A0  40 80 00 14 */	bge lbl_80C0A0B4
/* 80C0A0A4  2C 00 00 01 */	cmpwi r0, 1
/* 80C0A0A8  41 82 00 18 */	beq lbl_80C0A0C0
/* 80C0A0AC  40 80 00 20 */	bge lbl_80C0A0CC
/* 80C0A0B0  48 00 00 3C */	b lbl_80C0A0EC
lbl_80C0A0B4:
/* 80C0A0B4  2C 00 00 05 */	cmpwi r0, 5
/* 80C0A0B8  40 80 00 34 */	bge lbl_80C0A0EC
/* 80C0A0BC  48 00 00 28 */	b lbl_80C0A0E4
lbl_80C0A0C0:
/* 80C0A0C0  7F C3 F3 78 */	mr r3, r30
/* 80C0A0C4  48 00 22 A1 */	bl executeCrazyBeforeCatch__11daObj_GrA_cFv
/* 80C0A0C8  48 00 00 24 */	b lbl_80C0A0EC
lbl_80C0A0CC:
/* 80C0A0CC  7F C3 F3 78 */	mr r3, r30
/* 80C0A0D0  48 00 23 A9 */	bl executeCrazyCatch__11daObj_GrA_cFv
/* 80C0A0D4  48 00 00 18 */	b lbl_80C0A0EC
lbl_80C0A0D8:
/* 80C0A0D8  7F C3 F3 78 */	mr r3, r30
/* 80C0A0DC  48 00 25 B5 */	bl executeCrazyThrow__11daObj_GrA_cFv
/* 80C0A0E0  48 00 00 0C */	b lbl_80C0A0EC
lbl_80C0A0E4:
/* 80C0A0E4  7F C3 F3 78 */	mr r3, r30
/* 80C0A0E8  48 00 29 7D */	bl executeCrazyJumping__11daObj_GrA_cFv
lbl_80C0A0EC:
/* 80C0A0EC  3B E0 00 01 */	li r31, 1
/* 80C0A0F0  48 00 00 0C */	b lbl_80C0A0FC
lbl_80C0A0F4:
/* 80C0A0F4  38 00 00 00 */	li r0, 0
/* 80C0A0F8  90 1E 20 9C */	stw r0, 0x209c(r30)
lbl_80C0A0FC:
/* 80C0A0FC  7F C3 F3 78 */	mr r3, r30
/* 80C0A100  48 00 18 AD */	bl graThrowDemo__11daObj_GrA_cFv
/* 80C0A104  7F E3 FB 78 */	mr r3, r31
/* 80C0A108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C0A10C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C0A110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C0A114  7C 08 03 A6 */	mtlr r0
/* 80C0A118  38 21 00 10 */	addi r1, r1, 0x10
/* 80C0A11C  4E 80 00 20 */	blr 
