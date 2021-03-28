lbl_800CE208:
/* 800CE208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CE20C  7C 08 02 A6 */	mflr r0
/* 800CE210  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CE214  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CE218  7C 7F 1B 78 */	mr r31, r3
/* 800CE21C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800CE220  81 8C 02 6C */	lwz r12, 0x26c(r12)
/* 800CE224  7D 89 03 A6 */	mtctr r12
/* 800CE228  4E 80 04 21 */	bctrl 
/* 800CE22C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CE230  41 82 00 14 */	beq lbl_800CE244
/* 800CE234  7F E3 FB 78 */	mr r3, r31
/* 800CE238  48 07 1E 39 */	bl loadModelDVD__9daAlink_cFv
/* 800CE23C  38 60 00 00 */	li r3, 0
/* 800CE240  48 00 00 40 */	b lbl_800CE280
lbl_800CE244:
/* 800CE244  7F E3 FB 78 */	mr r3, r31
/* 800CE248  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800CE24C  81 8C 02 70 */	lwz r12, 0x270(r12)
/* 800CE250  7D 89 03 A6 */	mtctr r12
/* 800CE254  4E 80 04 21 */	bctrl 
/* 800CE258  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CE25C  41 82 00 14 */	beq lbl_800CE270
/* 800CE260  7F E3 FB 78 */	mr r3, r31
/* 800CE264  48 07 20 11 */	bl loadShieldModelDVD__9daAlink_cFv
/* 800CE268  38 60 00 00 */	li r3, 0
/* 800CE26C  48 00 00 14 */	b lbl_800CE280
lbl_800CE270:
/* 800CE270  7F E3 FB 78 */	mr r3, r31
/* 800CE274  38 80 FF FF */	li r4, -1
/* 800CE278  4B FF F5 35 */	bl __dt__9daAlink_cFv
/* 800CE27C  38 60 00 01 */	li r3, 1
lbl_800CE280:
/* 800CE280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CE284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CE288  7C 08 03 A6 */	mtlr r0
/* 800CE28C  38 21 00 10 */	addi r1, r1, 0x10
/* 800CE290  4E 80 00 20 */	blr 
