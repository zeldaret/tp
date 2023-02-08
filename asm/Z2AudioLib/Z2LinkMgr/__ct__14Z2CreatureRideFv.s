lbl_802C4FFC:
/* 802C4FFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5000  7C 08 02 A6 */	mflr r0
/* 802C5004  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5008  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C500C  7C 7F 1B 78 */	mr r31, r3
/* 802C5010  4B FF B3 B9 */	bl __ct__10Z2CreatureFv
/* 802C5014  38 7F 00 90 */	addi r3, r31, 0x90
/* 802C5018  7F E4 FB 78 */	mr r4, r31
/* 802C501C  48 00 02 19 */	bl __ct__18Z2RideSoundStarterFP14Z2CreatureRide
/* 802C5020  3C 60 80 3D */	lis r3, __vt__14Z2CreatureRide@ha /* 0x803CB924@ha */
/* 802C5024  38 63 B9 24 */	addi r3, r3, __vt__14Z2CreatureRide@l /* 0x803CB924@l */
/* 802C5028  90 7F 00 00 */	stw r3, 0(r31)
/* 802C502C  38 03 00 30 */	addi r0, r3, 0x30
/* 802C5030  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802C5034  38 00 00 00 */	li r0, 0
/* 802C5038  98 1F 00 98 */	stb r0, 0x98(r31)
/* 802C503C  7F E3 FB 78 */	mr r3, r31
/* 802C5040  7F E4 FB 78 */	mr r4, r31
/* 802C5044  28 1F 00 00 */	cmplwi r31, 0
/* 802C5048  41 82 00 08 */	beq lbl_802C5050
/* 802C504C  38 9F 00 90 */	addi r4, r31, 0x90
lbl_802C5050:
/* 802C5050  81 83 00 00 */	lwz r12, 0(r3)
/* 802C5054  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802C5058  7D 89 03 A6 */	mtctr r12
/* 802C505C  4E 80 04 21 */	bctrl 
/* 802C5060  7F E3 FB 78 */	mr r3, r31
/* 802C5064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C5068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C506C  7C 08 03 A6 */	mtlr r0
/* 802C5070  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5074  4E 80 00 20 */	blr 
