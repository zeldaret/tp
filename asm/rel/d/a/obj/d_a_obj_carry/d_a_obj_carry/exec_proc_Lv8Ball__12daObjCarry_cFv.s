lbl_80478CE4:
/* 80478CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80478CE8  7C 08 02 A6 */	mflr r0
/* 80478CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80478CF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80478CF4  7C 7F 1B 78 */	mr r31, r3
/* 80478CF8  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80478CFC  4B C0 B7 65 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80478D00  28 03 00 00 */	cmplwi r3, 0
/* 80478D04  41 82 00 38 */	beq lbl_80478D3C
/* 80478D08  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80478D0C  4B C0 B7 ED */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80478D10  28 03 00 00 */	cmplwi r3, 0
/* 80478D14  41 82 00 28 */	beq lbl_80478D3C
/* 80478D18  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80478D1C  4B C0 B8 61 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 80478D20  38 80 00 01 */	li r4, 1
/* 80478D24  4B C0 B8 8D */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80478D28  7C 64 1B 78 */	mr r4, r3
/* 80478D2C  38 7F 0D 88 */	addi r3, r31, 0xd88
/* 80478D30  38 A0 00 02 */	li r5, 2
/* 80478D34  38 C0 00 00 */	li r6, 0
/* 80478D38  4B E4 57 6D */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_80478D3C:
/* 80478D3C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80478D40  7C 03 07 74 */	extsb r3, r0
/* 80478D44  4B BB 43 29 */	bl dComIfGp_getReverb__Fi
/* 80478D48  7C 65 1B 78 */	mr r5, r3
/* 80478D4C  38 7F 0D 88 */	addi r3, r31, 0xd88
/* 80478D50  38 80 00 00 */	li r4, 0
/* 80478D54  81 9F 0D 98 */	lwz r12, 0xd98(r31)
/* 80478D58  81 8C 00 08 */	lwz r12, 8(r12)
/* 80478D5C  7D 89 03 A6 */	mtctr r12
/* 80478D60  4E 80 04 21 */	bctrl 
/* 80478D64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80478D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80478D6C  7C 08 03 A6 */	mtlr r0
/* 80478D70  38 21 00 10 */	addi r1, r1, 0x10
/* 80478D74  4E 80 00 20 */	blr 
