lbl_8046C774:
/* 8046C774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046C778  7C 08 02 A6 */	mflr r0
/* 8046C77C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046C780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046C784  7C 7F 1B 78 */	mr r31, r3
/* 8046C788  4B FF F2 55 */	bl wether_tag_reset__FP13kytag00_class
/* 8046C78C  7F E3 FB 78 */	mr r3, r31
/* 8046C790  4B FF F6 29 */	bl wether_tag_efect_reset__FP13kytag00_class
/* 8046C794  38 00 00 00 */	li r0, 0
/* 8046C798  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8046C79C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8046C7A0  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046C7A4  38 60 00 01 */	li r3, 1
/* 8046C7A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046C7AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046C7B0  7C 08 03 A6 */	mtlr r0
/* 8046C7B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8046C7B8  4E 80 00 20 */	blr 
