actions
delete
	<noCache>
	
	IceTipStandardAction new
		repository: self repositoryModel entity;
		message: ('Removing remote {1}' format: { self name });
		onSuccessRepositoryModified;
		do: [ self repositoryModel entity removeRemote: self entity ]