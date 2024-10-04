{ pkgs, lib, config, inputs, ... }:

{
  packages = (with pkgs; [
    jupyter-all
  ]) ++ (with pkgs.python311Packages; [
    # polars
  ]);

  languages.python = {
    enable = true;
    venv.enable = true;
    venv.requirements = ''
      kaggle
    
      numpy
      pandas
      polars-lts-cpu
      ipywidgets
      pyarrow
      altair==5.4

      matplotlib
      seaborn
      plotly

      scikit-learn
      catboost
      xgboost
      lightgbm
      optuna

      clearml
    '';
  };
}
