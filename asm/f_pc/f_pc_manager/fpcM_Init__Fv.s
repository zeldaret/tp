lbl_800222B8:
/* 800222B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800222BC  7C 08 02 A6 */	mflr r0
/* 800222C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800222C4  3C 60 80 3F */	lis r3, rootlayer@ha /* 0x803F4DB0@ha */
/* 800222C8  38 63 4D B0 */	addi r3, r3, rootlayer@l /* 0x803F4DB0@l */
/* 800222CC  38 80 00 00 */	li r4, 0
/* 800222D0  3C A0 80 3F */	lis r5, queue@ha /* 0x803F4DDC@ha */
/* 800222D4  38 A5 4D DC */	addi r5, r5, queue@l /* 0x803F4DDC@l */
/* 800222D8  38 C0 00 0A */	li r6, 0xa
/* 800222DC  4B FF F5 ED */	bl fpcLy_Create__FP11layer_classPvP15node_list_classi
/* 800222E0  4B FF FC 85 */	bl fpcLn_Create__Fv
/* 800222E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800222E8  7C 08 03 A6 */	mtlr r0
/* 800222EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800222F0  4E 80 00 20 */	blr 
