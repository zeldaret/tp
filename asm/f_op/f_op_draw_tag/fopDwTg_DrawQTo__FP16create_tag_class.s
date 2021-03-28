lbl_800204D4:
/* 800204D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800204D8  7C 08 02 A6 */	mflr r0
/* 800204DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800204E0  48 24 63 AD */	bl cTg_SingleCutFromTree__FP16create_tag_class
/* 800204E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800204E8  7C 08 03 A6 */	mtlr r0
/* 800204EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800204F0  4E 80 00 20 */	blr 
