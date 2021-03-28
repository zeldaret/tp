lbl_80298710:
/* 80298710  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80298714  7C 08 02 A6 */	mflr r0
/* 80298718  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029871C  39 61 00 20 */	addi r11, r1, 0x20
/* 80298720  48 0C 9A BD */	bl _savegpr_29
/* 80298724  7C 7D 1B 78 */	mr r29, r3
/* 80298728  7C 9E 23 78 */	mr r30, r4
/* 8029872C  7C BF 2B 78 */	mr r31, r5
/* 80298730  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80298734  3C 80 80 2A */	lis r4, __dt__Q216JASBasicWaveBank11TWaveHandleFv@ha
/* 80298738  38 84 85 E4 */	addi r4, r4, __dt__Q216JASBasicWaveBank11TWaveHandleFv@l
/* 8029873C  48 0C 95 31 */	bl __destroy_new_array
/* 80298740  1C 7E 00 2C */	mulli r3, r30, 0x2c
/* 80298744  38 63 00 10 */	addi r3, r3, 0x10
/* 80298748  7F E4 FB 78 */	mr r4, r31
/* 8029874C  38 A0 00 00 */	li r5, 0
/* 80298750  48 03 65 C1 */	bl __nwa__FUlP7JKRHeapi
/* 80298754  3C 80 80 2A */	lis r4, __ct__Q216JASBasicWaveBank11TWaveHandleFv@ha
/* 80298758  38 84 8C 18 */	addi r4, r4, __ct__Q216JASBasicWaveBank11TWaveHandleFv@l
/* 8029875C  3C A0 80 2A */	lis r5, __dt__Q216JASBasicWaveBank11TWaveHandleFv@ha
/* 80298760  38 A5 85 E4 */	addi r5, r5, __dt__Q216JASBasicWaveBank11TWaveHandleFv@l
/* 80298764  38 C0 00 2C */	li r6, 0x2c
/* 80298768  7F C7 F3 78 */	mr r7, r30
/* 8029876C  48 0C 97 A9 */	bl __construct_new_array
/* 80298770  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 80298774  B3 DD 00 24 */	sth r30, 0x24(r29)
/* 80298778  39 61 00 20 */	addi r11, r1, 0x20
/* 8029877C  48 0C 9A AD */	bl _restgpr_29
/* 80298780  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80298784  7C 08 03 A6 */	mtlr r0
/* 80298788  38 21 00 20 */	addi r1, r1, 0x20
/* 8029878C  4E 80 00 20 */	blr 
