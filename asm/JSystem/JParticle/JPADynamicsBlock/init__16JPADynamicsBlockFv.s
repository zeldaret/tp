lbl_8027BB4C:
/* 8027BB4C  80 83 00 00 */	lwz r4, 0(r3)
/* 8027BB50  80 04 00 08 */	lwz r0, 8(r4)
/* 8027BB54  54 00 C7 7E */	rlwinm r0, r0, 0x18, 0x1d, 0x1f
/* 8027BB58  28 00 00 06 */	cmplwi r0, 6
/* 8027BB5C  4D 81 00 20 */	bgtlr 
/* 8027BB60  3C 80 80 3C */	lis r4, lit_2631@ha /* 0x803C4488@ha */
/* 8027BB64  38 84 44 88 */	addi r4, r4, lit_2631@l /* 0x803C4488@l */
/* 8027BB68  54 00 10 3A */	slwi r0, r0, 2
/* 8027BB6C  7C 04 00 2E */	lwzx r0, r4, r0
/* 8027BB70  7C 09 03 A6 */	mtctr r0
/* 8027BB74  4E 80 04 20 */	bctr 
/* 8027BB78  3C 80 80 28 */	lis r4, JPAVolumeCube__FP18JPAEmitterWorkData@ha /* 0x8027B4E8@ha */
/* 8027BB7C  38 04 B4 E8 */	addi r0, r4, JPAVolumeCube__FP18JPAEmitterWorkData@l /* 0x8027B4E8@l */
/* 8027BB80  90 03 00 04 */	stw r0, 4(r3)
/* 8027BB84  4E 80 00 20 */	blr 
/* 8027BB88  3C 80 80 28 */	lis r4, JPAVolumeSphere__FP18JPAEmitterWorkData@ha /* 0x8027B5F0@ha */
/* 8027BB8C  38 04 B5 F0 */	addi r0, r4, JPAVolumeSphere__FP18JPAEmitterWorkData@l /* 0x8027B5F0@l */
/* 8027BB90  90 03 00 04 */	stw r0, 4(r3)
/* 8027BB94  4E 80 00 20 */	blr 
/* 8027BB98  3C 80 80 28 */	lis r4, JPAVolumeCylinder__FP18JPAEmitterWorkData@ha /* 0x8027B87C@ha */
/* 8027BB9C  38 04 B8 7C */	addi r0, r4, JPAVolumeCylinder__FP18JPAEmitterWorkData@l /* 0x8027B87C@l */
/* 8027BBA0  90 03 00 04 */	stw r0, 4(r3)
/* 8027BBA4  4E 80 00 20 */	blr 
/* 8027BBA8  3C 80 80 28 */	lis r4, JPAVolumeTorus__FP18JPAEmitterWorkData@ha /* 0x8027B9F8@ha */
/* 8027BBAC  38 04 B9 F8 */	addi r0, r4, JPAVolumeTorus__FP18JPAEmitterWorkData@l /* 0x8027B9F8@l */
/* 8027BBB0  90 03 00 04 */	stw r0, 4(r3)
/* 8027BBB4  4E 80 00 20 */	blr 
/* 8027BBB8  3C 80 80 28 */	lis r4, JPAVolumePoint__FP18JPAEmitterWorkData@ha /* 0x8027B144@ha */
/* 8027BBBC  38 04 B1 44 */	addi r0, r4, JPAVolumePoint__FP18JPAEmitterWorkData@l /* 0x8027B144@l */
/* 8027BBC0  90 03 00 04 */	stw r0, 4(r3)
/* 8027BBC4  4E 80 00 20 */	blr 
/* 8027BBC8  3C 80 80 28 */	lis r4, JPAVolumeCircle__FP18JPAEmitterWorkData@ha /* 0x8027B33C@ha */
/* 8027BBCC  38 04 B3 3C */	addi r0, r4, JPAVolumeCircle__FP18JPAEmitterWorkData@l /* 0x8027B33C@l */
/* 8027BBD0  90 03 00 04 */	stw r0, 4(r3)
/* 8027BBD4  4E 80 00 20 */	blr 
/* 8027BBD8  3C 80 80 28 */	lis r4, JPAVolumeLine__FP18JPAEmitterWorkData@ha /* 0x8027B220@ha */
/* 8027BBDC  38 04 B2 20 */	addi r0, r4, JPAVolumeLine__FP18JPAEmitterWorkData@l /* 0x8027B220@l */
/* 8027BBE0  90 03 00 04 */	stw r0, 4(r3)
/* 8027BBE4  4E 80 00 20 */	blr 
