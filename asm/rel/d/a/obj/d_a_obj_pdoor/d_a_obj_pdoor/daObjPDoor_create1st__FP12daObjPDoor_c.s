lbl_80CAAA4C:
/* 80CAAA4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAAA50  7C 08 02 A6 */	mflr r0
/* 80CAAA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAAA58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAAA5C  7C 7F 1B 78 */	mr r31, r3
/* 80CAAA60  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CAAA64  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CAAA68  40 82 00 28 */	bne lbl_80CAAA90
/* 80CAAA6C  28 1F 00 00 */	cmplwi r31, 0
/* 80CAAA70  41 82 00 14 */	beq lbl_80CAAA84
/* 80CAAA74  4B 3C DB B1 */	bl __ct__16dBgS_MoveBgActorFv
/* 80CAAA78  3C 60 80 CB */	lis r3, __vt__12daObjPDoor_c@ha /* 0x80CAAC08@ha */
/* 80CAAA7C  38 03 AC 08 */	addi r0, r3, __vt__12daObjPDoor_c@l /* 0x80CAAC08@l */
/* 80CAAA80  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80CAAA84:
/* 80CAAA84  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CAAA88  60 00 00 08 */	ori r0, r0, 8
/* 80CAAA8C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CAAA90:
/* 80CAAA90  7F E3 FB 78 */	mr r3, r31
/* 80CAAA94  4B FF F7 29 */	bl create1st__12daObjPDoor_cFv
/* 80CAAA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAAA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAAAA0  7C 08 03 A6 */	mtlr r0
/* 80CAAAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAAAA8  4E 80 00 20 */	blr 
